EESchema Schematic File Version 2
LIBS:power
LIBS:PreAmpBoard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title "Huracan MkIII PreAmp Board"
Date "2017-09-18"
Rev "A1"
Comp "Io Engineering"
Comment1 "Terje"
Comment2 ""
Comment3 "NOTE: license does not apply to RIAA circuitry"
Comment4 "Licensed under CERN OHL v.1.2 or later"
$EndDescr
$Comp
L T2_L4A_8650C IC1
U 1 1 55E5672C
P 9000 2550
F 0 "IC1" H 8150 3980 40  0000 L BNN
F 1 "T2_L4A_8650C" H 8800 3600 40  0000 L BNN
F 2 "IoSpecial:T2-L4A-8650C" H 8900 2700 30  0001 C CIN
F 3 "" H 8900 2700 60  0000 C CNN
	1    9000 2550
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 55E57B97
P 5950 1350
F 0 "C16" V 6000 1150 50  0000 L CNN
F 1 "1.5nF" V 5800 1250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5988 1200 30  0001 C CNN
F 3 "" H 5950 1350 60  0000 C CNN
	1    5950 1350
	0    -1   -1   0   
$EndComp
$Comp
L C C17
U 1 1 55E57C77
P 7400 2650
F 0 "C17" H 7425 2750 50  0000 L CNN
F 1 "100nF" H 7425 2550 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 7438 2500 30  0001 C CNN
F 3 "" H 7400 2650 60  0000 C CNN
	1    7400 2650
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 55E57D64
P 7600 1700
F 0 "R2" V 7680 1700 50  0000 C CNN
F 1 "10K" V 7600 1700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7530 1700 30  0001 C CNN
F 3 "" H 7600 1700 30  0000 C CNN
	1    7600 1700
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 55E57E22
P 7750 3150
F 0 "R3" V 7830 3150 50  0000 C CNN
F 1 "1K" V 7750 3150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7680 3150 30  0001 C CNN
F 3 "" H 7750 3150 30  0000 C CNN
	1    7750 3150
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 55E57F11
P 7800 1700
F 0 "R4" V 7880 1700 50  0000 C CNN
F 1 "10K" V 7800 1700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7730 1700 30  0001 C CNN
F 3 "" H 7800 1700 30  0000 C CNN
	1    7800 1700
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 55E57FF1
P 7400 1700
F 0 "R1" V 7480 1700 50  0000 C CNN
F 1 "100K" V 7400 1700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7330 1700 30  0001 C CNN
F 3 "" H 7400 1700 30  0000 C CNN
	1    7400 1700
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR_SMALL L1
U 1 1 55E580BA
P 6200 1600
F 0 "L1" V 6250 1500 50  0000 C CNN
F 1 "56nH" V 6350 1450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 6200 1600 60  0001 C CNN
F 3 "" H 6200 1600 60  0000 C CNN
	1    6200 1600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR076
U 1 1 55E5D1E7
P 8500 4150
F 0 "#PWR076" H 8500 3900 50  0001 C CNN
F 1 "GND" H 8500 4000 50  0000 C CNN
F 2 "" H 8500 4150 60  0000 C CNN
F 3 "" H 8500 4150 60  0000 C CNN
	1    8500 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR077
U 1 1 55E5E42D
P 7400 2850
F 0 "#PWR077" H 7400 2600 50  0001 C CNN
F 1 "GND" H 7400 2700 50  0000 C CNN
F 2 "" H 7400 2850 60  0000 C CNN
F 3 "" H 7400 2850 60  0000 C CNN
	1    7400 2850
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR078
U 1 1 55E629E1
P 9100 1000
F 0 "#PWR078" H 9100 850 50  0001 C CNN
F 1 "+3V3" V 9100 1200 50  0000 C CNN
F 2 "" H 9100 1000 60  0000 C CNN
F 3 "" H 9100 1000 60  0000 C CNN
	1    9100 1000
	1    0    0    -1  
$EndComp
$Comp
L +1V8 #PWR079
U 1 1 55E62A4C
P 9000 1000
F 0 "#PWR079" H 9000 850 50  0001 C CNN
F 1 "+1V8" V 9000 1200 50  0000 C CNN
F 2 "" H 9000 1000 60  0000 C CNN
F 3 "" H 9000 1000 60  0000 C CNN
	1    9000 1000
	1    0    0    -1  
$EndComp
$Comp
L +1V2 #PWR080
U 1 1 55E62AB7
P 8900 1000
F 0 "#PWR080" H 8900 850 50  0001 C CNN
F 1 "+1V2" V 8900 1200 50  0000 C CNN
F 2 "" H 8900 1000 60  0000 C CNN
F 3 "" H 8900 1000 60  0000 C CNN
	1    8900 1000
	1    0    0    -1  
$EndComp
Text Label 7100 2050 2    60   ~ 0
TxD
Text Label 7100 1950 2    60   ~ 0
RxD
$Comp
L +3V3 #PWR081
U 1 1 55E63CCA
P 7250 1550
F 0 "#PWR081" H 7250 1400 50  0001 C CNN
F 1 "+3V3" V 7250 1800 50  0000 C CNN
F 2 "" H 7250 1550 60  0000 C CNN
F 3 "" H 7250 1550 60  0000 C CNN
	1    7250 1550
	0    -1   -1   0   
$EndComp
$Comp
L +3V3 #PWR082
U 1 1 55E63FA6
P 7250 3150
F 0 "#PWR082" H 7250 3000 50  0001 C CNN
F 1 "+3V3" V 7250 3400 50  0000 C CNN
F 2 "" H 7250 3150 60  0000 C CNN
F 3 "" H 7250 3150 60  0000 C CNN
	1    7250 3150
	0    -1   -1   0   
$EndComp
$Comp
L CP_Small C18
U 1 1 55EA06B0
P 10300 1300
F 0 "C18" V 10350 1350 50  0000 L CNN
F 1 "10uF/16V" V 10450 1200 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_3x5.3" H 10300 1300 60  0001 C CNN
F 3 "" H 10300 1300 60  0000 C CNN
	1    10300 1300
	0    -1   -1   0   
$EndComp
$Comp
L CP_Small C19
U 1 1 55EA0745
P 10300 1500
F 0 "C19" V 10350 1550 50  0000 L CNN
F 1 "10uF/16V" V 10200 1400 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_3x5.3" H 10300 1500 60  0001 C CNN
F 3 "" H 10300 1500 60  0000 C CNN
	1    10300 1500
	0    -1   -1   0   
$EndComp
$Comp
L OP275 U10
U 1 1 5620B178
P 4050 1250
F 0 "U10" H 4050 1400 60  0000 L CNN
F 1 "OP275" H 4050 1100 60  0000 L CNN
F 2 "Sockets_DIP:DIP-8__300" H 4050 1250 60  0001 C CNN
F 3 "" H 4050 1250 60  0000 C CNN
	1    4050 1250
	1    0    0    -1  
$EndComp
$Comp
L OP275 U10
U 2 1 5620B1BD
P 2450 1150
F 0 "U10" H 2450 1300 60  0000 L CNN
F 1 "OP275" H 2450 1000 60  0000 L CNN
F 2 "Sockets_DIP:DIP-8__300" H 2450 1150 60  0001 C CNN
F 3 "" H 2450 1150 60  0000 C CNN
	2    2450 1150
	1    0    0    -1  
$EndComp
$Comp
L R R27
U 1 1 5620B241
P 3650 1950
F 0 "R27" V 3730 1950 50  0000 C CNN
F 1 "5K6" V 3650 1950 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 3580 1950 30  0001 C CNN
F 3 "" H 3650 1950 30  0000 C CNN
	1    3650 1950
	1    0    0    -1  
$EndComp
$Comp
L R R28
U 1 1 5620B2C8
P 2050 1900
F 0 "R28" V 2130 1900 50  0000 C CNN
F 1 "5K6" V 2050 1900 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 1980 1900 30  0001 C CNN
F 3 "" H 2050 1900 30  0000 C CNN
	1    2050 1900
	1    0    0    -1  
$EndComp
$Comp
L R R29
U 1 1 5620B31A
P 2400 1650
F 0 "R29" V 2480 1650 50  0000 C CNN
F 1 "24K" V 2400 1650 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2330 1650 30  0001 C CNN
F 3 "" H 2400 1650 30  0000 C CNN
	1    2400 1650
	0    1    1    0   
$EndComp
$Comp
L R R30
U 1 1 5620B375
P 2800 1650
F 0 "R30" V 2880 1650 50  0000 C CNN
F 1 "270K" V 2800 1650 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2730 1650 30  0001 C CNN
F 3 "" H 2800 1650 30  0000 C CNN
	1    2800 1650
	0    1    1    0   
$EndComp
$Comp
L R R31
U 1 1 5620B3FD
P 3200 1150
F 0 "R31" V 3280 1150 50  0000 C CNN
F 1 "27K" V 3200 1150 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 3130 1150 30  0001 C CNN
F 3 "" H 3200 1150 30  0000 C CNN
	1    3200 1150
	0    1    1    0   
$EndComp
$Comp
L R R32
U 1 1 5620B494
P 3400 1550
F 0 "R32" V 3480 1550 50  0000 C CNN
F 1 "1K" V 3400 1550 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 3330 1550 30  0001 C CNN
F 3 "" H 3400 1550 30  0000 C CNN
	1    3400 1550
	1    0    0    -1  
$EndComp
$Comp
L R R33
U 1 1 5620B502
P 3950 1750
F 0 "R33" V 4030 1750 50  0000 C CNN
F 1 "56K" V 3950 1750 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 3880 1750 30  0001 C CNN
F 3 "" H 3950 1750 30  0000 C CNN
	1    3950 1750
	0    1    1    0   
$EndComp
$Comp
L C C52
U 1 1 5620B5E9
P 2050 2250
F 0 "C52" H 2075 2350 50  0000 L CNN
F 1 "10uF/16V" H 2075 2150 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L11_P2.5" H 2088 2100 30  0001 C CNN
F 3 "" H 2050 2250 60  0000 C CNN
	1    2050 2250
	1    0    0    -1  
$EndComp
$Comp
L C C53
U 1 1 5620B649
P 2800 1900
F 0 "C53" V 2850 1700 50  0000 L CNN
F 1 "12nF" V 2850 1950 50  0000 L CNN
F 2 "Engineering_Conn:C_Disc_D3_P5" H 2838 1750 30  0001 C CNN
F 3 "" H 2800 1900 60  0000 C CNN
	1    2800 1900
	0    1    1    0   
$EndComp
$Comp
L C C54
U 1 1 5620B71C
P 3400 2250
F 0 "C54" H 3425 2350 50  0000 L CNN
F 1 "2.7nF" H 3425 2150 50  0000 L CNN
F 2 "Engineering_Conn:C_Disc_D3_P5" H 3438 2100 30  0001 C CNN
F 3 "" H 3400 2250 60  0000 C CNN
	1    3400 2250
	1    0    0    -1  
$EndComp
$Comp
L C C55
U 1 1 5620B7B7
P 3650 2250
F 0 "C55" H 3675 2350 50  0000 L CNN
F 1 "10uF/16V" H 3675 2150 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L11_P2.5" H 3688 2100 30  0001 C CNN
F 3 "" H 3650 2250 60  0000 C CNN
	1    3650 2250
	1    0    0    -1  
$EndComp
$Comp
L C C51
U 1 1 5620B85D
P 1550 1900
F 0 "C51" H 1575 2000 50  0000 L CNN
F 1 "Cx" H 1575 1800 50  0000 L CNN
F 2 "Engineering_Conn:C_Disc_D3_P5" H 1588 1750 30  0001 C CNN
F 3 "" H 1550 1900 60  0000 C CNN
	1    1550 1900
	1    0    0    -1  
$EndComp
Text HLabel 1450 1050 0    60   Input ~ 0
RIAALIN
Text HLabel 4500 1250 2    60   Input ~ 0
RIAALOUT
Text HLabel 10550 1300 2    60   Input ~ 0
RADIOL
Text HLabel 10550 1500 2    60   Input ~ 0
RADIOR
$Comp
L MSP430G2553-20 U11
U 1 1 561F0BAC
P 9000 5350
F 0 "U11" H 9000 5950 60  0000 C CNN
F 1 "MSP430G2553-20" H 9000 4750 60  0000 C CNN
F 2 "Engineering_Conn:TSSOP20" H 9000 5150 60  0001 C CNN
F 3 "" H 9000 5150 60  0000 C CNN
	1    9000 5350
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR083
U 1 1 561F144A
P 7900 4500
F 0 "#PWR083" H 7900 4350 50  0001 C CNN
F 1 "+3V3" H 7900 4650 50  0000 C CNN
F 2 "" H 7900 4500 60  0000 C CNN
F 3 "" H 7900 4500 60  0000 C CNN
	1    7900 4500
	1    0    0    -1  
$EndComp
Text HLabel 9500 5700 2    60   Input ~ 0
AUX
Text HLabel 9500 5800 2    60   Input ~ 0
CD
Text HLabel 8500 5800 0    60   Input ~ 0
TUNER
Text HLabel 9500 5300 2    60   Input ~ 0
TMON
Text HLabel 9500 5200 2    60   Input ~ 0
TC21
Text HLabel 9500 5400 2    60   Input ~ 0
TAPE1
Text HLabel 9500 5500 2    60   Input ~ 0
TAPE2
Text HLabel 9500 5600 2    60   Input ~ 0
TC12
$Comp
L OP275 U17
U 1 1 5620B12F
P 4050 3200
F 0 "U17" H 4050 3350 60  0000 L CNN
F 1 "OP275" H 4050 3050 60  0000 L CNN
F 2 "Sockets_DIP:DIP-8__300" H 4050 3200 60  0001 C CNN
F 3 "" H 4050 3200 60  0000 C CNN
	1    4050 3200
	1    0    0    -1  
$EndComp
$Comp
L OP275 U17
U 2 1 5620B135
P 2450 3100
F 0 "U17" H 2450 3250 60  0000 L CNN
F 1 "OP275" H 2450 2950 60  0000 L CNN
F 2 "Sockets_DIP:DIP-8__300" H 2450 3100 60  0001 C CNN
F 3 "" H 2450 3100 60  0000 C CNN
	2    2450 3100
	1    0    0    -1  
$EndComp
$Comp
L R R34
U 1 1 5620B13B
P 3650 3900
F 0 "R34" V 3730 3900 50  0000 C CNN
F 1 "5K6" V 3650 3900 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 3580 3900 30  0001 C CNN
F 3 "" H 3650 3900 30  0000 C CNN
	1    3650 3900
	1    0    0    -1  
$EndComp
$Comp
L R R35
U 1 1 5620B141
P 2050 3850
F 0 "R35" V 2130 3850 50  0000 C CNN
F 1 "5K6" V 2050 3850 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 1980 3850 30  0001 C CNN
F 3 "" H 2050 3850 30  0000 C CNN
	1    2050 3850
	1    0    0    -1  
$EndComp
$Comp
L R R36
U 1 1 5620B147
P 2400 3600
F 0 "R36" V 2480 3600 50  0000 C CNN
F 1 "24K" V 2400 3600 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2330 3600 30  0001 C CNN
F 3 "" H 2400 3600 30  0000 C CNN
	1    2400 3600
	0    1    1    0   
$EndComp
$Comp
L R R37
U 1 1 5620B14D
P 2800 3600
F 0 "R37" V 2880 3600 50  0000 C CNN
F 1 "270K" V 2800 3600 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2730 3600 30  0001 C CNN
F 3 "" H 2800 3600 30  0000 C CNN
	1    2800 3600
	0    1    1    0   
$EndComp
$Comp
L R R38
U 1 1 5620B153
P 3200 3100
F 0 "R38" V 3280 3100 50  0000 C CNN
F 1 "27K" V 3200 3100 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 3130 3100 30  0001 C CNN
F 3 "" H 3200 3100 30  0000 C CNN
	1    3200 3100
	0    1    1    0   
$EndComp
$Comp
L R R39
U 1 1 5620B159
P 3400 3500
F 0 "R39" V 3480 3500 50  0000 C CNN
F 1 "1K" V 3400 3500 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 3330 3500 30  0001 C CNN
F 3 "" H 3400 3500 30  0000 C CNN
	1    3400 3500
	1    0    0    -1  
$EndComp
$Comp
L R R40
U 1 1 5620B15F
P 3950 3700
F 0 "R40" V 4030 3700 50  0000 C CNN
F 1 "56K" V 3950 3700 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 3880 3700 30  0001 C CNN
F 3 "" H 3950 3700 30  0000 C CNN
	1    3950 3700
	0    1    1    0   
$EndComp
$Comp
L C C57
U 1 1 5620B165
P 2050 4200
F 0 "C57" H 2075 4300 50  0000 L CNN
F 1 "10uF/16V" H 2075 4100 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L11_P2.5" H 2088 4050 30  0001 C CNN
F 3 "" H 2050 4200 60  0000 C CNN
	1    2050 4200
	1    0    0    -1  
$EndComp
$Comp
L C C58
U 1 1 5620B16B
P 2800 3850
F 0 "C58" V 2850 3650 50  0000 L CNN
F 1 "12nF" V 2850 3900 50  0000 L CNN
F 2 "Engineering_Conn:C_Disc_D3_P5" H 2838 3700 30  0001 C CNN
F 3 "" H 2800 3850 60  0000 C CNN
	1    2800 3850
	0    1    1    0   
$EndComp
$Comp
L C C59
U 1 1 5620B171
P 3400 4200
F 0 "C59" H 3425 4300 50  0000 L CNN
F 1 "2.7nF" H 3425 4100 50  0000 L CNN
F 2 "Engineering_Conn:C_Disc_D3_P5" H 3438 4050 30  0001 C CNN
F 3 "" H 3400 4200 60  0000 C CNN
	1    3400 4200
	1    0    0    -1  
$EndComp
$Comp
L C C60
U 1 1 5620B177
P 3650 4200
F 0 "C60" H 3675 4300 50  0000 L CNN
F 1 "10uF/16V" H 3675 4100 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L11_P2.5" H 3688 4050 30  0001 C CNN
F 3 "" H 3650 4200 60  0000 C CNN
	1    3650 4200
	1    0    0    -1  
$EndComp
$Comp
L C C56
U 1 1 5620B17D
P 1550 3850
F 0 "C56" H 1575 3950 50  0000 L CNN
F 1 "Cx" H 1575 3750 50  0000 L CNN
F 2 "Engineering_Conn:C_Disc_D3_P5" H 1588 3700 30  0001 C CNN
F 3 "" H 1550 3850 60  0000 C CNN
	1    1550 3850
	1    0    0    -1  
$EndComp
Text HLabel 1450 3000 0    60   Input ~ 0
RIAARIN
Text HLabel 4500 3200 2    60   Input ~ 0
RIAAROUT
$Comp
L +12VA #PWR084
U 1 1 56232053
P 2350 850
F 0 "#PWR084" H 2350 700 50  0001 C CNN
F 1 "+12VA" H 2350 990 50  0000 C CNN
F 2 "" H 2350 850 60  0000 C CNN
F 3 "" H 2350 850 60  0000 C CNN
	1    2350 850 
	1    0    0    -1  
$EndComp
$Comp
L +12VA #PWR085
U 1 1 562320E0
P 3950 950
F 0 "#PWR085" H 3950 800 50  0001 C CNN
F 1 "+12VA" H 3950 1090 50  0000 C CNN
F 2 "" H 3950 950 60  0000 C CNN
F 3 "" H 3950 950 60  0000 C CNN
	1    3950 950 
	1    0    0    -1  
$EndComp
$Comp
L +12VA #PWR086
U 1 1 56232517
P 2350 2800
F 0 "#PWR086" H 2350 2650 50  0001 C CNN
F 1 "+12VA" H 2350 2940 50  0000 C CNN
F 2 "" H 2350 2800 60  0000 C CNN
F 3 "" H 2350 2800 60  0000 C CNN
	1    2350 2800
	1    0    0    -1  
$EndComp
$Comp
L +12VA #PWR087
U 1 1 5623257D
P 3950 2900
F 0 "#PWR087" H 3950 2750 50  0001 C CNN
F 1 "+12VA" H 3950 3040 50  0000 C CNN
F 2 "" H 3950 2900 60  0000 C CNN
F 3 "" H 3950 2900 60  0000 C CNN
	1    3950 2900
	1    0    0    -1  
$EndComp
$Comp
L -12VA #PWR088
U 1 1 5623272B
P 2350 1450
F 0 "#PWR088" H 2350 1300 50  0001 C CNN
F 1 "-12VA" V 2350 1700 50  0000 C CNN
F 2 "" H 2350 1450 60  0000 C CNN
F 3 "" H 2350 1450 60  0000 C CNN
	1    2350 1450
	0    1    1    0   
$EndComp
$Comp
L -12VA #PWR089
U 1 1 562327B8
P 3950 1550
F 0 "#PWR089" H 3950 1400 50  0001 C CNN
F 1 "-12VA" V 3950 1800 50  0000 C CNN
F 2 "" H 3950 1550 60  0000 C CNN
F 3 "" H 3950 1550 60  0000 C CNN
	1    3950 1550
	0    1    1    0   
$EndComp
$Comp
L -12VA #PWR090
U 1 1 562328E2
P 2350 3400
F 0 "#PWR090" H 2350 3250 50  0001 C CNN
F 1 "-12VA" V 2350 3650 50  0000 C CNN
F 2 "" H 2350 3400 60  0000 C CNN
F 3 "" H 2350 3400 60  0000 C CNN
	1    2350 3400
	0    1    1    0   
$EndComp
$Comp
L -12VA #PWR091
U 1 1 56232C9C
P 3950 3500
F 0 "#PWR091" H 3950 3350 50  0001 C CNN
F 1 "-12VA" V 3950 3750 50  0000 C CNN
F 2 "" H 3950 3500 60  0000 C CNN
F 3 "" H 3950 3500 60  0000 C CNN
	1    3950 3500
	0    1    1    0   
$EndComp
$Comp
L GNDA #PWR092
U 1 1 562340A2
P 1550 2550
F 0 "#PWR092" H 1550 2300 50  0001 C CNN
F 1 "GNDA" H 1550 2400 50  0000 C CNN
F 2 "" H 1550 2550 60  0000 C CNN
F 3 "" H 1550 2550 60  0000 C CNN
	1    1550 2550
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR093
U 1 1 56234A86
P 1550 4500
F 0 "#PWR093" H 1550 4250 50  0001 C CNN
F 1 "GNDA" H 1550 4350 50  0000 C CNN
F 2 "" H 1550 4500 60  0000 C CNN
F 3 "" H 1550 4500 60  0000 C CNN
	1    1550 4500
	1    0    0    -1  
$EndComp
$Comp
L MCP4725 U25
U 1 1 5620E4EC
P 7250 5600
F 0 "U25" H 7050 5850 60  0000 C CNN
F 1 "MCP4725" H 7400 5850 60  0000 C CNN
F 2 "Engineering_Conn:SOT23-6" H 7000 5600 60  0001 C CNN
F 3 "" H 7000 5600 60  0000 C CNN
	1    7250 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR094
U 1 1 5620F04F
P 6800 6400
F 0 "#PWR094" H 6800 6150 50  0001 C CNN
F 1 "GND" H 6800 6250 50  0000 C CNN
F 2 "" H 6800 6400 60  0000 C CNN
F 3 "" H 6800 6400 60  0000 C CNN
	1    6800 6400
	1    0    0    -1  
$EndComp
$Comp
L LM358 U24
U 1 1 5620F933
P 4500 5500
F 0 "U24" H 4450 5700 60  0000 L CNN
F 1 "LM358" H 4450 5250 60  0000 L CNN
F 2 "Engineering_Conn:SO-8" H 4500 5500 60  0001 C CNN
F 3 "" H 4500 5500 60  0000 C CNN
	1    4500 5500
	-1   0    0    -1  
$EndComp
$Comp
L R R45
U 1 1 56200B82
P 5300 5600
F 0 "R45" V 5380 5600 50  0000 C CNN
F 1 "6K8" V 5300 5600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5230 5600 30  0001 C CNN
F 3 "" H 5300 5600 30  0000 C CNN
	1    5300 5600
	0    1    1    0   
$EndComp
$Comp
L R R43
U 1 1 562011E5
P 5000 5200
F 0 "R43" V 5080 5200 50  0000 C CNN
F 1 "68K" V 5000 5200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4930 5200 30  0001 C CNN
F 3 "" H 5000 5200 30  0000 C CNN
	1    5000 5200
	-1   0    0    1   
$EndComp
$Comp
L R R44
U 1 1 56201285
P 5000 6050
F 0 "R44" V 5080 6050 50  0000 C CNN
F 1 "6K8" V 5000 6050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4930 6050 30  0001 C CNN
F 3 "" H 5000 6050 30  0000 C CNN
	1    5000 6050
	-1   0    0    1   
$EndComp
$Comp
L R R42
U 1 1 56201328
P 4500 4800
F 0 "R42" V 4580 4800 50  0000 C CNN
F 1 "8K2" V 4500 4800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4430 4800 30  0001 C CNN
F 3 "" H 4500 4800 30  0000 C CNN
	1    4500 4800
	0    1    1    0   
$EndComp
$Comp
L R R41
U 1 1 56201460
P 3800 5500
F 0 "R41" V 3880 5500 50  0000 C CNN
F 1 "3K3" V 3800 5500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3730 5500 30  0001 C CNN
F 3 "" H 3800 5500 30  0000 C CNN
	1    3800 5500
	0    1    1    0   
$EndComp
$Comp
L -12VA #PWR095
U 1 1 56204603
P 6200 6400
F 0 "#PWR095" H 6200 6250 50  0001 C CNN
F 1 "-12VA" H 6200 6540 50  0000 C CNN
F 2 "" H 6200 6400 60  0000 C CNN
F 3 "" H 6200 6400 60  0000 C CNN
	1    6200 6400
	-1   0    0    1   
$EndComp
$Comp
L +12VA #PWR096
U 1 1 5620476E
P 6200 4900
F 0 "#PWR096" H 6200 4750 50  0001 C CNN
F 1 "+12VA" H 6200 5040 50  0000 C CNN
F 2 "" H 6200 4900 60  0000 C CNN
F 3 "" H 6200 4900 60  0000 C CNN
	1    6200 4900
	1    0    0    -1  
$EndComp
$Comp
L D D4
U 1 1 56205E11
P 3600 6000
F 0 "D4" H 3600 6100 50  0000 C CNN
F 1 "1N14147" H 3600 5900 50  0000 C CNN
F 2 "Diodes_SMD:SOD-123" H 3600 6000 60  0001 C CNN
F 3 "" H 3600 6000 60  0000 C CNN
	1    3600 6000
	0    1    1    0   
$EndComp
Text HLabel 3200 5500 0    60   Input ~ 0
UVOL
$Comp
L LM358 U24
U 2 1 5620F54B
P 6100 5600
F 0 "U24" H 6050 5800 60  0000 L CNN
F 1 "LM358" H 6050 5350 60  0000 L CNN
F 2 "Engineering_Conn:SO-8" H 6100 5600 60  0001 C CNN
F 3 "" H 6100 5600 60  0000 C CNN
	2    6100 5600
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X03 P18
U 1 1 562174ED
P 10250 5000
F 0 "P18" H 10250 5200 50  0000 C CNN
F 1 "SBW" V 10350 5000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 10250 5000 60  0001 C CNN
F 3 "" H 10250 5000 60  0000 C CNN
	1    10250 5000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P16
U 1 1 56217ADC
P 8000 6100
F 0 "P16" V 8000 6350 50  0000 C CNN
F 1 "I2C" V 8100 6100 50  0000 C CNN
F 2 "Engineering_Conn:70543-03" H 8000 6100 60  0001 C CNN
F 3 "" H 8000 6100 60  0000 C CNN
	1    8000 6100
	0    -1   1    0   
$EndComp
$Comp
L CONN_01X03 P17
U 1 1 56217BBF
P 6050 2700
F 0 "P17" H 6050 2900 50  0000 C CNN
F 1 "DAB UART" V 6150 2700 50  0000 C CNN
F 2 "Engineering_Conn:70543-03" H 6050 2700 60  0001 C CNN
F 3 "" H 6050 2700 60  0000 C CNN
	1    6050 2700
	-1   0    0    1   
$EndComp
$Comp
L R R46
U 1 1 5622E14D
P 9800 4750
F 0 "R46" V 9880 4750 50  0000 C CNN
F 1 "47K" V 9800 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9730 4750 30  0001 C CNN
F 3 "" H 9800 4750 30  0000 C CNN
	1    9800 4750
	-1   0    0    1   
$EndComp
$Comp
L C C65
U 1 1 5622E965
P 10050 5950
F 0 "C65" H 10075 6050 50  0000 L CNN
F 1 "1nF" H 10075 5850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10088 5800 30  0001 C CNN
F 3 "" H 10050 5950 60  0000 C CNN
	1    10050 5950
	1    0    0    -1  
$EndComp
$Comp
L R R47
U 1 1 56238792
P 7900 5250
F 0 "R47" V 7980 5250 50  0000 C CNN
F 1 "6K8" V 7900 5250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7830 5250 30  0001 C CNN
F 3 "" H 7900 5250 30  0000 C CNN
	1    7900 5250
	-1   0    0    1   
$EndComp
$Comp
L R R48
U 1 1 56238CB1
P 8100 5250
F 0 "R48" V 8180 5250 50  0000 C CNN
F 1 "6K8" V 8100 5250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8030 5250 30  0001 C CNN
F 3 "" H 8100 5250 30  0000 C CNN
	1    8100 5250
	-1   0    0    1   
$EndComp
Text Label 7100 2450 2    60   ~ 0
RESET
Text Label 8500 5000 2    60   ~ 0
RESET
Text Label 8500 5400 2    60   ~ 0
PWRON
Text Label 6250 2600 0    60   ~ 0
TxD
Text Label 6250 2700 0    60   ~ 0
RxD
$Comp
L C C66
U 1 1 5624C0CA
P 10450 5950
F 0 "C66" H 10475 6050 50  0000 L CNN
F 1 "100nF" H 10475 5850 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 10488 5800 30  0001 C CNN
F 3 "" H 10450 5950 60  0000 C CNN
	1    10450 5950
	1    0    0    -1  
$EndComp
$Comp
L BAV99 D5
U 1 1 5624E0EC
P 6450 1550
F 0 "D5" H 6600 1600 50  0000 C CNN
F 1 "BAV99" H 6450 1450 50  0001 C CNN
F 2 "Housings_SOT-23_SOT-143_TSOT-6:SOT-23" H 6350 1550 50  0001 C CNN
F 3 "" H 6450 1650 50  0000 C CNN
	1    6450 1550
	0    1    1    0   
$EndComp
$Comp
L BAV99 D5
U 2 1 5624E287
P 6650 1550
F 0 "D5" H 6500 1500 50  0000 C CNN
F 1 "BAV99" V 6950 1650 50  0000 C CNN
F 2 "Housings_SOT-23_SOT-143_TSOT-6:SOT-23" H 6550 1550 50  0001 C CNN
F 3 "" H 6650 1650 50  0000 C CNN
	2    6650 1550
	0    -1   -1   0   
$EndComp
$Comp
L C C67
U 1 1 5620C2B8
P 3250 5900
F 0 "C67" H 3275 6000 50  0000 L CNN
F 1 "1uF" H 3275 5800 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 3288 5750 30  0001 C CNN
F 3 "" H 3250 5900 60  0000 C CNN
	1    3250 5900
	1    0    0    -1  
$EndComp
$Comp
L JACK_3PINS J1
U 1 1 5620B84E
P 3650 7150
F 0 "J1" H 3300 7400 50  0000 C CNN
F 1 "PWRON" H 3650 6950 50  0000 C CNN
F 2 "Engineering_Conn:PSG01538" H 3750 7000 60  0001 C CNN
F 3 "" H 3750 7000 60  0000 C CNN
	1    3650 7150
	1    0    0    -1  
$EndComp
Text Label 5700 7100 0    60   ~ 0
PWRON
$Comp
L R R49
U 1 1 5620E582
P 4400 7150
F 0 "R49" V 4480 7150 50  0000 C CNN
F 1 "100R" V 4400 7150 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 4330 7150 30  0001 C CNN
F 3 "" H 4400 7150 30  0000 C CNN
	1    4400 7150
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 P19
U 1 1 56210E35
P 4150 7550
F 0 "P19" V 4150 7750 50  0000 C CNN
F 1 "PWRON" V 4250 7550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 4150 7550 60  0001 C CNN
F 3 "" H 4150 7550 60  0000 C CNN
	1    4150 7550
	0    1    1    0   
$EndComp
$Comp
L SMA P10
U 1 1 5621AF80
P 5600 1350
F 0 "P10" H 5550 1500 60  0000 C CNN
F 1 "ANT" H 5750 1350 60  0000 C CNN
F 2 "RF_connectors:CON-SMA-EDGE" H 5600 1350 60  0001 C CNN
F 3 "" H 5600 1350 60  0000 C CNN
	1    5600 1350
	-1   0    0    -1  
$EndComp
NoConn ~ 8500 5300
NoConn ~ 8500 5500
NoConn ~ 10000 1650
NoConn ~ 10000 1750
NoConn ~ 10000 1850
NoConn ~ 10000 1950
NoConn ~ 10000 2050
NoConn ~ 10000 2150
NoConn ~ 10000 2250
NoConn ~ 10000 2350
NoConn ~ 10000 2500
NoConn ~ 10000 2600
NoConn ~ 10000 2700
NoConn ~ 10000 2800
NoConn ~ 10000 2900
NoConn ~ 10000 3050
NoConn ~ 10000 3150
NoConn ~ 10000 3250
NoConn ~ 10000 3350
NoConn ~ 10000 3500
NoConn ~ 10000 3600
NoConn ~ 10000 3700
NoConn ~ 10000 3800
NoConn ~ 8000 1650
NoConn ~ 8000 1750
NoConn ~ 8000 1450
NoConn ~ 8000 2750
NoConn ~ 8000 2850
NoConn ~ 8000 3700
$Comp
L BC850 Q1
U 1 1 5622D400
P 4750 6850
F 0 "Q1" H 4950 6925 50  0000 L CNN
F 1 "BC850" H 4950 6850 50  0000 L CNN
F 2 "Housings_SOT-23_SOT-143_TSOT-6:SOT-23" H 4950 6775 50  0001 L CIN
F 3 "" H 4750 6850 50  0000 L CNN
	1    4750 6850
	-1   0    0    -1  
$EndComp
$Comp
L BC850 Q2
U 1 1 5622D4B3
P 5100 7100
F 0 "Q2" H 5300 7175 50  0000 L CNN
F 1 "BC850" H 5300 7100 50  0000 L CNN
F 2 "Housings_SOT-23_SOT-143_TSOT-6:SOT-23" H 5300 7025 50  0001 L CIN
F 3 "" H 5100 7100 50  0000 L CNN
	1    5100 7100
	-1   0    0    -1  
$EndComp
$Comp
L R R50
U 1 1 5622D6A7
P 5000 6650
F 0 "R50" V 5080 6650 50  0000 C CNN
F 1 "15K" V 5000 6650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4930 6650 30  0001 C CNN
F 3 "" H 5000 6650 30  0000 C CNN
	1    5000 6650
	1    0    0    -1  
$EndComp
$Comp
L R R51
U 1 1 5622E137
P 5500 7100
F 0 "R51" V 5580 7100 50  0000 C CNN
F 1 "56K" V 5500 7100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5430 7100 30  0001 C CNN
F 3 "" H 5500 7100 30  0000 C CNN
	1    5500 7100
	0    1    1    0   
$EndComp
$Comp
L +15V #PWR097
U 1 1 56230011
P 4600 6450
F 0 "#PWR097" H 4600 6300 50  0001 C CNN
F 1 "+15V" V 4600 6700 50  0000 C CNN
F 2 "" H 4600 6450 60  0000 C CNN
F 3 "" H 4600 6450 60  0000 C CNN
	1    4600 6450
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 P11
U 1 1 562356A2
P 1350 4450
F 0 "P11" H 1350 4550 50  0000 C CNN
F 1 "CHASSIS" H 1600 4450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 1350 4450 60  0001 C CNN
F 3 "" H 1350 4450 60  0000 C CNN
	1    1350 4450
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR098
U 1 1 5623A5AF
P 5000 7500
F 0 "#PWR098" H 5000 7250 50  0001 C CNN
F 1 "GND" H 5000 7350 50  0000 C CNN
F 2 "" H 5000 7500 60  0000 C CNN
F 3 "" H 5000 7500 60  0000 C CNN
	1    5000 7500
	1    0    0    -1  
$EndComp
Text Notes 1700 4600 0    60   ~ 0
Cx - optional cartridge load
Text Notes 750  4850 0    60   ~ 0
RIAA design as published by High Fidelity (danish magazine)
Connection ~ 6450 1900
Wire Wire Line
	6450 1750 6450 2800
Wire Wire Line
	6200 1900 6200 1850
Wire Wire Line
	5600 1900 6650 1900
Wire Wire Line
	6650 1900 6650 1750
Connection ~ 6650 1350
Connection ~ 6450 1350
Connection ~ 6200 1350
Wire Wire Line
	7400 3350 7400 3150
Connection ~ 7800 1950
Wire Wire Line
	7800 1850 7800 1950
Connection ~ 7600 2050
Wire Wire Line
	7600 1850 7600 2050
Wire Wire Line
	7100 2050 8000 2050
Wire Wire Line
	7100 1950 8000 1950
Connection ~ 7400 1550
Connection ~ 7600 1550
Wire Wire Line
	7250 1550 7800 1550
Wire Wire Line
	7400 1850 7400 2500
Connection ~ 7400 3150
Wire Wire Line
	7250 3150 7600 3150
Wire Wire Line
	8000 3350 7400 3350
Wire Wire Line
	8000 3150 7900 3150
Connection ~ 9200 4100
Connection ~ 9100 4100
Connection ~ 9000 4100
Connection ~ 8900 4100
Connection ~ 8800 4100
Connection ~ 8700 4100
Connection ~ 8600 4100
Wire Wire Line
	7900 4100 9300 4100
Wire Wire Line
	8500 4150 8500 4100
Connection ~ 6200 1900
Wire Wire Line
	10000 1350 10000 1300
Wire Wire Line
	10000 1300 10200 1300
Wire Wire Line
	10000 1450 10000 1500
Wire Wire Line
	10000 1500 10200 1500
Wire Wire Line
	10400 1500 10550 1500
Wire Wire Line
	10400 1300 10550 1300
Wire Wire Line
	8000 3600 7900 3600
Wire Wire Line
	7900 3600 7900 4100
Connection ~ 8500 4100
Wire Wire Line
	7400 2800 7400 2850
Connection ~ 7400 2800
Wire Wire Line
	2050 1250 2050 1750
Wire Wire Line
	2050 2050 2050 2100
Wire Wire Line
	2050 1650 2250 1650
Connection ~ 2050 1650
Wire Wire Line
	2550 1650 2650 1650
Wire Wire Line
	2600 1650 2600 1900
Wire Wire Line
	2600 1900 2650 1900
Connection ~ 2600 1650
Wire Wire Line
	2750 1150 3050 1150
Wire Wire Line
	2950 1900 3000 1900
Wire Wire Line
	3000 1900 3000 1150
Connection ~ 3000 1150
Wire Wire Line
	2950 1650 3000 1650
Connection ~ 3000 1650
Wire Wire Line
	3350 1150 3750 1150
Wire Wire Line
	3400 1150 3400 1400
Connection ~ 3400 1150
Wire Wire Line
	3400 1700 3400 2100
Wire Wire Line
	3650 1350 3750 1350
Wire Wire Line
	4350 1250 4500 1250
Wire Wire Line
	4450 1250 4450 1750
Wire Wire Line
	4450 1750 4100 1750
Connection ~ 4450 1250
Wire Wire Line
	3800 1750 3650 1750
Connection ~ 3650 1750
Wire Wire Line
	2050 1250 2150 1250
Wire Wire Line
	1450 1050 2150 1050
Wire Wire Line
	1550 1050 1550 1750
Wire Wire Line
	1550 2050 1550 2550
Wire Wire Line
	1550 2500 3650 2500
Wire Wire Line
	3650 2500 3650 2400
Wire Wire Line
	3400 2400 3400 2500
Connection ~ 3400 2500
Wire Wire Line
	2050 2400 2050 2500
Connection ~ 2050 2500
Connection ~ 1550 1050
Wire Wire Line
	2050 3200 2050 3700
Wire Wire Line
	2050 4000 2050 4050
Wire Wire Line
	2050 3600 2250 3600
Connection ~ 2050 3600
Wire Wire Line
	2550 3600 2650 3600
Wire Wire Line
	2600 3600 2600 3850
Wire Wire Line
	2600 3850 2650 3850
Connection ~ 2600 3600
Wire Wire Line
	2750 3100 3050 3100
Wire Wire Line
	2950 3850 3000 3850
Wire Wire Line
	3000 3850 3000 3100
Connection ~ 3000 3100
Wire Wire Line
	2950 3600 3000 3600
Connection ~ 3000 3600
Wire Wire Line
	3350 3100 3750 3100
Wire Wire Line
	3400 3100 3400 3350
Connection ~ 3400 3100
Wire Wire Line
	3400 3650 3400 4050
Wire Wire Line
	3650 3300 3750 3300
Wire Wire Line
	4350 3200 4500 3200
Wire Wire Line
	4450 3200 4450 3700
Wire Wire Line
	4450 3700 4100 3700
Connection ~ 4450 3200
Wire Wire Line
	3800 3700 3650 3700
Connection ~ 3650 3700
Wire Wire Line
	2050 3200 2150 3200
Wire Wire Line
	1450 3000 2150 3000
Wire Wire Line
	1550 3000 1550 3700
Wire Wire Line
	1550 4000 1550 4500
Wire Wire Line
	1550 4450 3650 4450
Wire Wire Line
	3650 4450 3650 4350
Wire Wire Line
	3400 4350 3400 4450
Connection ~ 3400 4450
Wire Wire Line
	2050 4350 2050 4450
Connection ~ 2050 4450
Connection ~ 1550 3000
Connection ~ 1550 2500
Connection ~ 1550 4450
Wire Wire Line
	3650 1350 3650 1800
Wire Wire Line
	3650 3300 3650 3750
Wire Wire Line
	7700 5600 8500 5600
Wire Wire Line
	7700 5700 8500 5700
Wire Wire Line
	4600 4950 4600 5200
Wire Wire Line
	3250 6250 10450 6250
Wire Wire Line
	5450 5600 5800 5600
Wire Wire Line
	5000 5350 5000 5900
Wire Wire Line
	6200 4950 4600 4950
Wire Wire Line
	5000 4950 5000 5050
Connection ~ 5000 4950
Wire Wire Line
	5000 6250 5000 6200
Wire Wire Line
	6200 5900 6200 6400
Wire Wire Line
	4600 5800 4600 6350
Connection ~ 6200 6350
Wire Wire Line
	4350 4800 4000 4800
Wire Wire Line
	4000 4800 4000 5500
Wire Wire Line
	4650 4800 5100 4800
Wire Wire Line
	5100 4800 5100 5600
Connection ~ 5100 5600
Connection ~ 5600 5600
Wire Wire Line
	3200 5500 3650 5500
Wire Wire Line
	3600 5500 3600 5850
Connection ~ 3600 5500
Wire Wire Line
	6800 5700 6800 6400
Connection ~ 6800 6250
Wire Wire Line
	6400 5500 6800 5500
Wire Wire Line
	3950 5500 4200 5500
Connection ~ 4000 5500
Wire Wire Line
	4800 5600 5150 5600
Connection ~ 5000 5400
Connection ~ 6200 4950
Wire Wire Line
	6200 4900 6200 5300
Wire Wire Line
	5600 5600 5600 5950
Wire Wire Line
	5600 5950 6600 5950
Wire Wire Line
	6600 5950 6600 5700
Wire Wire Line
	9500 5100 10050 5100
Wire Wire Line
	9800 4900 9800 5100
Connection ~ 9800 5100
Wire Wire Line
	8500 4900 8500 4550
Wire Wire Line
	6750 4550 10450 4550
Wire Wire Line
	9800 4550 9800 4600
Wire Wire Line
	9500 5000 10050 5000
Wire Wire Line
	9500 4900 10050 4900
Wire Wire Line
	9900 6250 9900 4900
Connection ~ 9900 4900
Wire Wire Line
	8100 5400 8100 5900
Wire Wire Line
	6800 5900 7900 5900
Connection ~ 6800 5900
Connection ~ 9900 6250
Connection ~ 8100 5700
Wire Wire Line
	7900 5400 7900 5800
Connection ~ 7900 5600
Wire Wire Line
	7900 4500 7900 5100
Connection ~ 8500 4550
Connection ~ 7900 4550
Wire Wire Line
	8100 4550 8100 5100
Connection ~ 8100 4550
Wire Wire Line
	6250 2800 7400 2800
Connection ~ 6450 2800
Wire Wire Line
	10450 4550 10450 5800
Connection ~ 9800 4550
Wire Wire Line
	10450 6250 10450 6100
Connection ~ 10050 6250
Wire Wire Line
	4600 6350 6200 6350
Wire Wire Line
	3600 6150 3600 6250
Connection ~ 5000 6250
Wire Wire Line
	3250 5500 3250 5750
Connection ~ 3250 5500
Wire Wire Line
	3250 6050 3250 6250
Connection ~ 3600 6250
Wire Wire Line
	4200 7250 4050 7250
Connection ~ 4200 7050
Wire Wire Line
	4050 7150 4250 7150
Wire Wire Line
	4100 7150 4100 7350
Connection ~ 4100 7150
Connection ~ 4200 7250
Wire Wire Line
	8000 5900 8000 5800
Wire Wire Line
	8000 5800 7900 5800
Wire Wire Line
	5600 1550 5600 1900
Wire Wire Line
	6100 1350 8000 1350
Wire Wire Line
	7100 2450 8000 2450
Wire Wire Line
	10050 5100 10050 5800
Wire Wire Line
	10050 6250 10050 6100
Connection ~ 10050 5100
Connection ~ 7400 2450
Wire Wire Line
	6750 4550 6750 5600
Wire Wire Line
	6750 5600 6800 5600
Wire Wire Line
	7700 5500 7700 4550
Connection ~ 7700 4550
Wire Wire Line
	5000 7300 5000 7500
Wire Wire Line
	4650 7050 4650 7150
Wire Wire Line
	4650 7150 4550 7150
Wire Wire Line
	4950 6850 5000 6850
Wire Wire Line
	5000 6800 5000 6900
Connection ~ 5000 6850
Wire Wire Line
	5000 6450 5000 6500
Wire Wire Line
	4600 6450 5000 6450
Wire Wire Line
	4650 6450 4650 6650
Wire Wire Line
	5300 7100 5350 7100
Wire Wire Line
	5650 7100 5700 7100
Connection ~ 4650 6450
Connection ~ 5000 7350
Wire Wire Line
	4050 7050 4200 7050
Wire Wire Line
	4200 7050 4200 7350
Wire Wire Line
	4200 7350 5000 7350
Connection ~ 4200 7350
Wire Wire Line
	4800 5400 5000 5400
Wire Wire Line
	6600 5700 6400 5700
Text Label 8500 5100 2    60   ~ 0
RxD
Text Label 8500 5200 2    60   ~ 0
TxD
$EndSCHEMATC