//
// main.c - Huracan Pre Amp MK III Power switch for Raspberry Pi
//
// v1.0 / 2017-07-24 / Io Engineering / Terje
//
//

/*

Copyright (c) 2015-2017, Terje Io
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

#include <msp430.h> 
#include <stdbool.h>
#include <stdint.h>

#include "config.h"
#include "i2c.h"

uint16_t bootcount = 0;
volatile int16_t swdebounce = 0;
volatile PIState_t piState = PIState_Halted;

void delay (uint16_t ms)
{
	while(ms--)
		__delay_cycles(1000);
}

void ledColor (uint8_t color)
{

	P1OUT &= ~(LED0|LED1);
	P1OUT |= color;
}

void flashLed (uint8_t led)
{
	if(P1IN & led)
		P1OUT &= ~led;
	else
		P1OUT |= led;
	delay(BOOT_DELAY);
}

void setPower (bool on)
{
	if(on)
		P2OUT |= RELAY;			// Switch on power
	else
		P2OUT &= ~RELAY;			// Switch off power
}

#ifdef PRINTER
void fanPower (bool on)
{
	if(on)
		P1OUT |= FAN;			// Switch on power
	else
		P1OUT &= ~FAN;			// Switch off power
}
#endif

void setPIState (PIState_t state)
{
	piState = state;

	switch(piState) {

		case PIState_Booting:
			setPower(true);
			bootcount = REBOOT_WAITS;
			ledColor(LEDGREEN);
			break;

		case PIState_Running:
		  #ifdef PRINTER
			if(P1IN & FANIN)
				P1IES |= FANIN;                		// H-to-L interrupts for FANIN pin
			else
				P1IES &= ~FANIN;					// L-to-H interrupts for FANIN pin

			P1IE |= FANIN;							// enable FANIN interrupts
		  #endif
			ledColor(LEDGREEN);
			break;

		case PIState_Shutdown:
			bootcount = SHUTDOWN_WAITS;
			ledColor(LEDRED);
			PIDIR |= SHUTDOWN;			// Drive shutdown request
			PIOUT &= ~SHUTDOWN;			// pin low
			break;

		case PIState_Halted:
		  #ifdef PRINTER
			fanPower(false);
		  #endif
			ledColor(LEDRED);
			break;

		case PIState_Reset:
			ledColor(LEDRED);
			PIDIR |= RESET; 				// Drive reset pin low
			PIOUT &= ~RESET; 				// Drive reset pin low
			break;

	}
}

PIState_t getPIState (void)
{
	return piState;
}

void main(void)
{
	WDTCTL = WDTPW | WDTHOLD;				// Stop watchdog timer
	BCSCTL1 = CALBC1_1MHZ;					// Use 1MHz calibrated clock
    DCOCTL = CALDCO_1MHZ;					// ...

#ifdef PIPORT2

	P1DIR = ~(SWITCH|FANRPM|FANIN|TEMP);	// P1 as output for all pins except SWITCH
	P1REN |= SWITCH;						// Enable pullup
	P1OUT |= SWITCH;						// for SWITCH pin

	P2DIR = ~(READY|SHUTDOWN|RESET);		// P2 as output for all pins except READY, SHUTDOWN and RESET
	P2REN |= READY|SWITCH;					// Enable pullup
	P2OUT |= READY|SWITCH;					// for READY pin

	P2IES &= ~READY;                		// Configure L-to-H interrupts for READY pin,

#else

	P1DIR = ~(READY|SHUTDOWN|SWITCH|RESET);	// P1 as output for all pins except READY, SHUTDOWN & SWITCH
	P1REN |= READY|SWITCH;					// for READY and SWITCH pins
	P1OUT |= READY|SWITCH;					// Enable pullup

	P1IES &= ~READY;                		// Configure L-to-H interrupts for READY pin,

	P2SEL  = 0x00;							// P2 all I/O
	P2SEL2 = 0x00;							// ...
	P2DIR  = 0xFF;							// P2 as output

#endif

	P1IES |= SWITCH;                		// H-to-L interrupts for SWITCH pin,
	P1IFG = 0;								// clear any pending interrupts and
	P1IE |= SWITCH;							// enable SWITCH interrupts

	P3DIR = 0xFF;							// P3 as output
	P3OUT = 0xFF;							// high for stability

#ifdef PRINTER
	fanPower(false);
#else
	I2Cinit();
#endif

	setPIState((PIIN & READY) == PI_RDY ? PIState_Booting : PIState_Halted);

	if(piState == PIState_Booting)
		setPower(true);

	_EINT();										// Enable interrupts

	while(1) {

		if(swdebounce > 0) {						// Front panel button pressed?

			delay(DEBOUNCE_DELAY);					// Debounce delay...

			if((P1IN & SWITCH) == 0) {				// Button still pressed?
				if(++swdebounce == 80)				// Pressed for more than 4s?
					setPIState(PIState_Reset);		// Yes, enter reset state (will be handled after button is released)
			} else
				swdebounce = - swdebounce;

		} else {

			if(piState != PIState_Reset && swdebounce < -3)
				setPIState(piState == PIState_Halted ? PIState_Booting : PIState_Shutdown);

			swdebounce = 0;

			switch(piState) {

				case PIState_Booting:
					flashLed(LED1);							// Flash front panel on LED
					if((PIIN & READY) == PI_RDY) {			// Booted?
						delay(DEBOUNCE_DELAY);				// If so "debounce" ready reading, may change briefly during boot
						if((PIIN & READY) == PI_RDY)		// Still booted?
							setPIState(PIState_Running);	// Yes, enter running state
					} else if(!(--bootcount))				// No, decrement boot counter and
						setPIState(PIState_Halted);			// (re)enter halted state if timed out
					break;

				case PIState_Running:
					PIIFG = 0;								// Clear any pending interrupts,
					PIIE |= READY;							// enable READY interrupt and
					LPM0;									// enter LPM
					break;

				case PIState_Shutdown:
					flashLed(LED0);							// Flash front panel on LED
					if((PIIN & READY) != PI_RDY) {			// Ready signal deasserted?
						PIIE  &= ~READY;					// Yes - disable READY interrupt,
						PIDIR &= ~SHUTDOWN;					// tri-state shutdown pin,
						P1IFG = 0;							// clear any pending interrupt and
						setPIState(PIState_Halted);   		// set halted state
					} else if(!(--bootcount))				// No, decrement boot counter and
						setPIState(PIState_Running);		// reenter running state if timed out
					break;

				case PIState_Halted:
					setPower(false);						// Switch off power and
					LPM0;									// enter LPM
					break;

				case PIState_Reset:
					delay(RESET_PULSE);					// Delay a bit,
					PIDIR &= ~RESET; 					// release RESET pin and
					setPIState(PIState_Booting);		// enter booting state
					break;

			 }
		}
	}
}

#pragma vector=PORT1_VECTOR
__interrupt void P1_ISR(void)
{

#ifndef PIPORT2
	if((P1IFG & READY) && piState != PIState_Halted)	// Pi shutdown?
		setPIState(PIState_Shutdown);					// Yep, enter shutdown state

	else
#endif

	if((P1IFG & SWITCH) && !swdebounce)			// Front panel button pressed?
		swdebounce = 1;							// Set (but NOT reset) debounce counter to flag it to main loop

#ifdef PRINTER
	if(P1IFG & FANIN) {

		if(P1IN & FANIN) {
			P1IES |= FANIN;                		// H-to-L interrupts for FANIN pin and
			P1IE &= ~SWITCH;					// disable SWITCH interrupts
		} else {
			P1IES &= ~FANIN;					// L-to-H interrupts for FANIN pin and
			P1IE |= SWITCH;						// enable SWITCH interrupts
		}

		fanPower(P1IN & FANIN);
		ledColor(P1IN & FANIN ? LEDORANGE : LEDGREEN);

	}
#endif

	P1IFG = 0;									// Clear interrupt flags and
	LPM0_EXIT;									// exit LPM
}

#ifdef PIPORT2

#pragma vector=PORT2_VECTOR
__interrupt void P2_ISR(void)
{

	if(P2IFG & READY)							// Pi shutdown?
		setPIState(PIState_Shutdown);			// Yep, enter shutdown state

	P2IFG = 0;									// Clear interrupt flags and
	LPM0_EXIT;									// exit LPM
}

#endif



