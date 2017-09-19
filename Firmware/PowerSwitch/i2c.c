 //
// i2c.c - Huracan Pre Amp MK III Power switch for Raspberry Pi
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

#include <stdint.h>
#include <stdbool.h>

#include <msp430.h>

#include "config.h"

uint8_t i2cData[3];
volatile uint16_t i2cRXCount;
volatile uint8_t *pi2cData;

void I2Cinit (void)
{
	P1SEL  |= SDA|SDC;				// Assign I2C pins to USCI_B0
	P1SEL2 |= SDA|SDC;				// Assign I2C pins to USCI_B0

	IE2 &= ~UCB0TXIE;				// Disable TX interrupt and
	IFG2 &= ~(UCB0RXIE|UCB0TXIE);	// clear any pending RX/TX interrupts
	UCB0CTL1 |= UCSWRST;			// Enable SW reset
	UCB0CTL0 = UCMODE_3 + UCSYNC;	// I2C Slave, synchronous mode
	UCB0I2COA = I2CADDRESS;			// Set own address
	UCB0CTL1 &= ~UCSWRST;			// Clear SW reset, resume operation
	UCB0I2CIE |= UCSTPIE|UCSTTIE;	// Enable STP (Stop) and STT (Start) interrupts
	IE2 |= UCB0RXIE;				// Enable RX
}

#pragma vector = USCIAB0TX_VECTOR
__interrupt void USCIAB0TX_ISR(void)
{

	uint8_t ifg = IFG2;

	if(ifg & UCB0TXIFG) {
		UCB0TXBUF = (uint8_t)getPIState();
		IE2 &= ~UCB0TXIE;
	}

	if(ifg & UCB0RXIFG) {

		if(i2cRXCount < 3) {
			*pi2cData++ = UCB0RXBUF;
			i2cRXCount++;
		}

	}

}

#pragma vector = USCIAB0RX_VECTOR
__interrupt void USCIAB0RX_ISR(void)
{

	uint8_t stat = UCB0STAT;

	if(stat & UCSTTIFG) {

		if(UCB0CTL1 & UCTR)				// Transmit?
			IE2 |= UCB0TXIE;			// Yep, enable interrupt
		else {
			i2cRXCount = 0;
			pi2cData = i2cData;
		}

	} else if((stat & UCSTPIFG) && i2cRXCount) {

		switch(i2cData[0]) {

	      case CMDOFF:							    // Switch off?
	        if(getPIState() == PIState_Running) {	// If sPi running
	        	setPIState(PIState_Shutdown);		// enter shutdown state and
	        	LPM0_EXIT;						    // exit LPM
	        }
	        break;

	      case CMDON:							    // Switch on?
	        if(getPIState() == PIState_Halted) {	// If Pi halted
	          setPIState(PIState_Booting);	        // enter booting state and
		      LPM0_EXIT;						    // exit LPM
	        }
	        break;

	      case CMDRESET:						    // Reset?
	        if(getPIState() == PIState_Running) {	// If Pi running
	        	setPIState(PIState_Reset);		    // enter reset state and
	        	LPM0_EXIT;						    // exit LPM
	        }
	        break;

	      case CMDRUN:							    // Swicth on power and
	  		setPower(true);						    // set running state
	    	setPIState(PIState_Running);			// regardless of PI status (for initial setup)
			LPM0_EXIT;							    // exit LPM
	        break;

		}

		i2cRXCount = 0;
	}

	UCB0STAT &= ~(UCSTPIFG + UCSTTIFG);		        // Clear interrupt flags
}
