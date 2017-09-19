//
// pwr2.c - Huracan Pre Amp MK III Power switch for Raspberry Pi 2
//
// for Raspberry Pi 2 running OSMC
//
// v1.0 / 2015-04-15 / Io Engineering / Terje
//
// See http://www.linuxprofilm.com/articles/linux-daemon-howto.html
// for how to write a daemon
//
// See https://discourse.osmc.tv/t/install-custom-services-with-systemd-on-the-raspberry-2-using-osmc/3037
// for how to install a custom service
//

/*

Copyright (c) 2015, Terje Io
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

· Redistributions of source code must retain the above copyright notice, this
list of conditions and the following disclaimer.

· Redistributions in binary form must reproduce the above copyright notice, this
list of conditions and the following disclaimer in the documentation and/or
other materials provided with the distribution.

· Neither the name of the copyright holder nor the names of its contributors may
be used to endorse or promote products derived from this software without
specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

*/

/*

Script for starting pwr2 as daemon on boot (save as /etc/systemd/system/power.service):

[Unit]
Description="handle power"

[Service]
Type=forking
User=root
ExecStart=/home/osmc/pwr2 daemon

[Install]
WantedBy=default.target

---

Useful commands:

pwr2 on       - set ready pin to on (1), for testing
pwr2 off      - set ready pin to off (1), for testing
pwr2 shutdown - shutdown Pi, for testing
pwr2 daemon   - run as daemon, normal mode

systemctl enable power
systemctl start power
systemctl status power

*/

#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>

#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>

#include <unistd.h>

#define BCM2708_PERI_BASE   0x3f000000
#define GPIO_BASE           (BCM2708_PERI_BASE + 0x200000)	// GPIO controller 

#define BLOCK_SIZE          (4*1024)

// IO Acces
struct bcm2835_peripheral {
	unsigned long addr_p;
	int mem_fd;
	void *map;
	volatile unsigned int *addr;
};

struct bcm2835_peripheral gpio = {GPIO_BASE};

extern struct bcm2835_peripheral gpio;  // They have to be found somewhere, but can't be in the header

// GPIO setup macros. Always use INP_GPIO(x) before using OUT_GPIO(x)

#define INP_GPIO(g) *(gpio.addr + ((g)/10)) &= ~(7<<(((g)%10)*3))
#define OUT_GPIO(g) *(gpio.addr + ((g)/10)) |=  (1<<(((g)%10)*3))

#define SET_GPIO_ALT(g,a) *(gpio.addr + (((g)/10))) |= (((a)<=3?(a) + 4:(a)==4?3:2)<<(((g)%10)*3))

#define GPIO_SET *(gpio.addr + 7)  // sets   bits which are 1 ignores bits which are 0
#define GPIO_CLR *(gpio.addr + 10) // clears bits which are 1 ignores bits which are 0

#define GPIO_READ(g)  *(gpio.addr + 13) &= (1<<(g))

// Exposes the physical address defined in the passed structure using mmap on /dev/mem
int map_peripheral(struct bcm2835_peripheral *p)
{
	// Open /dev/mem
	if ((p->mem_fd = open("/dev/mem", O_RDWR|O_SYNC) ) < 0) {
		printf("Failed to open /dev/mem, try checking permissions.\n");
		return -1;
	}
 
	p->map = mmap(
		NULL,
		BLOCK_SIZE,
		PROT_READ|PROT_WRITE,
		MAP_SHARED,
		p->mem_fd,      // File descriptor to physical memory virtual file '/dev/mem'
		p->addr_p       // Address in physical map that we want this memory block to expose
	);

	if (p->map == MAP_FAILED) {
		perror("mmap");
		return -1;
	}

	p->addr = (volatile unsigned int *)p->map;

	return 0;
}

void unmap_peripheral(struct bcm2835_peripheral *p) {
	munmap(p->map, BLOCK_SIZE);
	close(p->mem_fd);
}

#define readyPin 2
#define shutdownPin 3

int main(int argc, char **argv) {

	if(map_peripheral(&gpio) == -1) {
		printf("Failed to map the physical GPIO registers into the virtual memory space.\n");
		return -1;
	}

//R1:0/R2:2 SDA - 3
//R1:1/R2:3 SCL - 5

	INP_GPIO(readyPin);
	OUT_GPIO(readyPin);
	INP_GPIO(shutdownPin); 

	if(argc == 2) {

		if(strcmp(argv[1], "off") == 0)
			GPIO_SET = 1 << readyPin;

		else if(strcmp(argv[1], "on") == 0)
			GPIO_CLR = 1 << readyPin;

		else if(strcmp(argv[1], "shutdown") == 0) {

			system("sudo systemctl stop mediacenter");
			sleep(4);
			system("sudo shutdown -h now");

		} else if(strcmp(argv[1], "wait") == 0) {

			GPIO_CLR = 1 << readyPin;

			while(argc) {
				argc = GPIO_READ(shutdownPin);
				usleep(250000); // 250 ms
			}
			argc = 0;
			system("sudo systemctl stop mediacenter");
			sleep(4);
			system("sudo shutdown -h now");

		} else if(strcmp(argv[1], "daemon") == 0) {

			pid_t pid, sid;

			pid = fork();

			if(pid < 0)
                exit(1);
			else if (pid > 0)
                exit(0);

			umask(0);

			sid = setsid();

			if(sid < 0)
				exit(2);

			close(STDIN_FILENO);
			close(STDOUT_FILENO);
			close(STDERR_FILENO);
		
			GPIO_CLR = 1 << readyPin;

			while(argc) {
				argc = GPIO_READ(shutdownPin);
				usleep(200000); // 200 ms
			}

			argc = 0;
			system("sudo systemctl stop mediacenter");
			sleep(4);
			system("sudo shutdown -h now");
		}
	
	}

	return 0;

}
