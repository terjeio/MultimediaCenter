//
// config.h - Huracan Pre Amp MK III Power switch for Raspberry Pi
//
// v1.0 / 2017-07-24 / Io Engineering / Terje
//
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

#include <stdbool.h>
#include <stdint.h>

#define I2CADDRESS 0x4C

//#define PRINTER
//#define PROTOTYPE

#ifdef PROTOTYPE

#define RESET	 BIT0 //P1.0
#define SHUTDOWN BIT1 //P1.1
#define READY	 BIT2 //P1.2
#define LED0	 BIT4 //P1.3
#define LED1	 BIT3 //P1.4
#define SWITCH	 BIT5 //P1.5
#define SDC		 BIT6 //P1.6
#define SDA		 BIT7 //P1.7
#define RELAY	 BIT3 //P2.3

#define PIIN P1IN
#define PIOUT P1OUT
#define PIDIR P1DIR
#define PIIE P1IE
#define PIIFG P1IFG

#else

#ifdef PRINTER

#define FANRPM	 BIT0 //P1.0
#define	FAN		 BIT1 //P1.1
#define	TEMP	 BIT2 //P1.2
#define SWITCH	 BIT3 //P1.3
#define LED0	 BIT4 //P1.3
#define LED1	 BIT5 //P1.5
#define SDC		 BIT6 //P1.6
#define SDA		 BIT7 //P1.7
#define SHUTDOWN BIT0 //P2.0
#define READY	 BIT1 //P2.1
#define RESET	 BIT2 //P2.2
#define RELAY	 BIT3 //P2.3

#define	FANIN	 BIT6 //P1.6

#define PIPORT2
#define PIIN P2IN
#define PIOUT P2OUT
#define PIDIR P2DIR
#define PIIE P2IE
#define PIIFG P2IFG

#else

#define SHUTDOWN BIT0 //P1.0
#define READY	 BIT1 //P1.1
#define RESET	 BIT2 //P1.2
#define SWITCH	 BIT3 //P1.3
#define LED0	 BIT4 //P1.4
#define LED1	 BIT5 //P1.5
#define SDC		 BIT6 //P1.6
#define SDA		 BIT7 //P1.7
#define RELAY	 BIT3 //P2.3

#define PIIN P1IN
#define PIOUT P1OUT
#define PIDIR P1DIR
#define PIIE P1IE
#define PIIFG P1IFG

#endif
#endif

#define LEDOFF 	  0
#define LEDRED 	  LED0
#define LEDGREEN  LED1
#define LEDORANGE (LED0|LED1)

typedef enum {
	PIState_Booting = 0,
	PIState_Running,
	PIState_Shutdown,
	PIState_Halted,
	PIState_Reset
} PIState_t;

#define CMDOFF 	 0
#define CMDON    1
#define CMDRESET 2
#define CMDRUN	 3
#define CMDRADIO 0xFE

// 1 x_WAITS ~0.5s

#define RESET_WAITS 80
#define RESET_PULSE 3000
#define BOOT_DELAY 500
#define REBOOT_WAITS 30
#define SHUTDOWN_WAITS 120
#define DEBOUNCE_DELAY 50
#define LED_OFF HIGH
#define LED_ON LOW
#define PI_RDY 0

extern void setPower (bool on);
PIState_t getPIState (void);
void setPIState (PIState_t state);
