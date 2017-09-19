# Power control daemon for Raspberry Pi 2 & 3

This daemon monitors and sets a pin for handling power to the Raspberry Pi "PC-style".
It is written in plain C and does direct GPIO reads/writes.

The PowerSwitch PCB/firmware handles the power relay and a on/off button & status LED.

A short button press initiates power-up or shutdown according to the current state. A long press (> 4s) when the Pi is in the running state forces a hard reset.

The solution can easily be adopted to other usage scenarioes, I have made use of it in my 3D-printer controller that runs OctoPrint.

Installation details and references can be found in the source code.
