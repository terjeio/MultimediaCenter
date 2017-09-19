# PowerSwitch firmware

"PC-style" power on/off for Raspberry Pi with I2C control, uses a Texas Instruments MSP430G2553 MCU.

I2CAddress: 0x4C

Write:

* 0x00 - if Raspberry Pi is in running state initiate shutdown and power off when halted
* 0x01 - if Raspberry Pi is in halted state (not powered) switch power on
* 0x02 - if Raspberry Pi is in running state initiate a hard reset
* 0x03 - switch power on regardless of Raspberry Pi state

Read:

Returns Raspberry Pi state.

* 0 - booting
* 1 - running
* 2 - shutdown (in progress)
* 3 - halted (not powered)
* 4 - reset

**NOTE:** The Raspberry Pi needs to be wired to the power switch PCB and the power switch daemon must be started during boot.

Wiring:

* P5 pin 1 to Raspberry Pi reset, add a pin header to the Pi if required
* P5 pin 4 to Raspberry Pi GPIO 2
* P5 pin 5 to Raspberry Pi GPIO 3

P2 may be connected to Raspberry Pi via a soldered cable to one of the USB ports to (there are convenient test points on the Pi PCB) if an internal port is required.

This project can be directly imported into TI's cloud based IDE available at [dev.ti.com](https://dev.ti.com), there is no need to download and set up a local development environment in order to compile and upload code.

A [MSP-EXP430G2 LaunchPad](http://www.ti.com/tool/MSP-EXP430G2) can be used as a programmer, remove the MCU from the launchpad and connect P7 \(SBW\) to the corresponding pins on the launchpad.
