# Multimedia center with DAB/FM radio

Features:

High quality (IMO) pre-amp board with I2C control of inputs and VCA based volume control.

5 line inputs, one may be fitted with an internal RIAA-preamp (phono, for moving magnet cartridges).
2 line outputs with old-style tape copy function and post listening possible.

Power amplifier on/off switching via inbuilt relay river.

KeyStone DAB/FM-module may be fitted.

Custom Raspberry PI power switch with PC-style startup/shutdown, may be controlled over I2C or from a front panel button.
Has "breakout" socket for internal USB HDD.

IR Remote Control - RC5 protocol: for input selection, volume control and UI controller navigation.

Main controller built around a Texas Instruments Tiva C MPU, custom UI library with support for KeyStone radio-module.

Rasberry PI for media playback (via Kodi), in my configuration audio is fed via HDMI to a TV and then to a DAC mounted inside the pre-amp cabinet.
