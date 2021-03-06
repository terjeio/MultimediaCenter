EESchema Schematic File Version 2
LIBS:engineering
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:microcontrollers
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:interface
LIBS:philips
LIBS:display
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:diode
LIBS:switches
LIBS:controller-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Huracan Mk III controller"
Date "2015-09-28"
Rev "1"
Comp "Io Engineering"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Licensed under CERN OHL v.1.2 or later"
$EndDescr
$Comp
L TM4C1231H6PM U5
U 1 1 55DB028A
P 5800 3800
F 0 "U5" H 4650 5550 45  0000 C CNN
F 1 "TM4C1231H6PM" H 6800 1800 45  0000 C CNN
F 2 "QFP:LQFP-64_10x10mm_Pitch0.5mm" H 5800 3800 35  0001 C CIN
F 3 "" H 5800 4500 60  0000 C CNN
	1    5800 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 55DB038D
P 5600 6050
F 0 "#PWR01" H 5600 6050 30  0001 C CNN
F 1 "GND" H 5600 5980 30  0001 C CNN
F 2 "" H 5600 6050 60  0000 C CNN
F 3 "" H 5600 6050 60  0000 C CNN
	1    5600 6050
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X1
U 1 1 55DB0527
P 3550 3900
F 0 "X1" H 3550 4050 60  0000 C CNN
F 1 "16MHz" H 3550 3750 60  0000 C CNN
F 2 "xtal:XTAL_ABM7_6x3.5MM" H 3550 3900 60  0001 C CNN
F 3 "" H 3550 3900 60  0000 C CNN
	1    3550 3900
	-1   0    0    1   
$EndComp
$Comp
L C C10
U 1 1 55DB0676
P 3250 4150
F 0 "C10" H 3250 4250 40  0000 L CNN
F 1 "10pF" H 3256 4065 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3288 4000 30  0001 C CNN
F 3 "" H 3250 4150 60  0000 C CNN
	1    3250 4150
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 55DB06B9
P 3900 4150
F 0 "C14" H 3900 4250 40  0000 L CNN
F 1 "10pF" H 3906 4065 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3938 4000 30  0001 C CNN
F 3 "" H 3900 4150 60  0000 C CNN
	1    3900 4150
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 55DB0736
P 3000 7200
F 0 "C6" H 3000 7300 40  0000 L CNN
F 1 "100nF" H 3006 7115 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3038 7050 30  0001 C CNN
F 3 "" H 3000 7200 60  0000 C CNN
	1    3000 7200
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 55DB07A7
P 3250 7200
F 0 "C9" H 3250 7300 40  0000 L CNN
F 1 "10nF" H 3256 7115 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3288 7050 30  0001 C CNN
F 3 "" H 3250 7200 60  0000 C CNN
	1    3250 7200
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 55DB080D
P 3500 7200
F 0 "C11" H 3500 7300 40  0000 L CNN
F 1 "10nF" H 3506 7115 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3538 7050 30  0001 C CNN
F 3 "" H 3500 7200 60  0000 C CNN
	1    3500 7200
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 55DB0868
P 3750 7200
F 0 "C12" H 3750 7300 40  0000 L CNN
F 1 "100nF" H 3756 7115 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3788 7050 30  0001 C CNN
F 3 "" H 3750 7200 60  0000 C CNN
	1    3750 7200
	1    0    0    -1  
$EndComp
$Comp
L C C13
U 1 1 55DB08CF
P 4000 7200
F 0 "C13" H 4000 7300 40  0000 L CNN
F 1 "1uF" H 4006 7115 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4038 7050 30  0001 C CNN
F 3 "" H 4000 7200 60  0000 C CNN
	1    4000 7200
	1    0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 55DB0930
P 4250 7200
F 0 "C15" H 4250 7300 40  0000 L CNN
F 1 "10nF" H 4256 7115 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4288 7050 30  0001 C CNN
F 3 "" H 4250 7200 60  0000 C CNN
	1    4250 7200
	1    0    0    -1  
$EndComp
$Comp
L 2.2TFT_DISPLAY_SPI U6
U 1 1 55DB39B9
P 8400 1350
F 0 "U6" H 7950 1650 60  0000 C CNN
F 1 "2.2TFT_DISPLAY_SPI" H 8450 1650 60  0000 C CNN
F 2 "Engineering_Conn:QVGA_2.2" H 8400 1350 60  0001 C CNN
F 3 "" H 8400 1350 60  0000 C CNN
	1    8400 1350
	1    0    0    -1  
$EndComp
$Comp
L LM358 U7
U 1 1 55DB2DF5
P 8650 4500
F 0 "U7" H 8600 4700 60  0000 L CNN
F 1 "LM358" H 8600 4250 60  0000 L CNN
F 2 "Engineering_Conn:SO-8" H 8650 4500 60  0001 C CNN
F 3 "" H 8650 4500 60  0000 C CNN
	1    8650 4500
	-1   0    0    -1  
$EndComp
$Comp
L LM358 U7
U 2 1 55DB2E7A
P 8650 5500
F 0 "U7" H 8600 5700 60  0000 L CNN
F 1 "LM358" H 8600 5250 60  0000 L CNN
F 2 "Engineering_Conn:SO-8" H 8650 5500 60  0001 C CNN
F 3 "" H 8650 5500 60  0000 C CNN
	2    8650 5500
	-1   0    0    1   
$EndComp
$Comp
L R R9
U 1 1 55DB3353
P 8950 6000
F 0 "R9" V 9030 6000 40  0000 C CNN
F 1 "1K0" V 8957 6001 40  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 8880 6000 30  0001 C CNN
F 3 "" H 8950 6000 30  0000 C CNN
	1    8950 6000
	-1   0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 55DB33AA
P 9150 4100
F 0 "R10" V 9230 4100 40  0000 C CNN
F 1 "1K0" V 9157 4101 40  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9080 4100 30  0001 C CNN
F 3 "" H 9150 4100 30  0000 C CNN
	1    9150 4100
	-1   0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 55DB33EF
P 9450 4400
F 0 "R11" V 9530 4400 40  0000 C CNN
F 1 "3K3" V 9457 4401 40  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9380 4400 30  0001 C CNN
F 3 "" H 9450 4400 30  0000 C CNN
	1    9450 4400
	0    -1   1    0   
$EndComp
$Comp
L R R12
U 1 1 55DB3440
P 9450 5600
F 0 "R12" V 9530 5600 40  0000 C CNN
F 1 "3K3" V 9457 5601 40  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9380 5600 30  0001 C CNN
F 3 "" H 9450 5600 30  0000 C CNN
	1    9450 5600
	0    -1   1    0   
$EndComp
$Comp
L R R13
U 1 1 55DB34AB
P 9800 4100
F 0 "R13" V 9880 4100 40  0000 C CNN
F 1 "1M0" V 9807 4101 40  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9730 4100 30  0001 C CNN
F 3 "" H 9800 4100 30  0000 C CNN
	1    9800 4100
	1    0    0    1   
$EndComp
$Comp
L R R15
U 1 1 55DB35B7
P 10150 4400
F 0 "R15" V 10230 4400 40  0000 C CNN
F 1 "3K3" V 10157 4401 40  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 10080 4400 30  0001 C CNN
F 3 "" H 10150 4400 30  0000 C CNN
	1    10150 4400
	0    -1   1    0   
$EndComp
$Comp
L R R14
U 1 1 55DB3676
P 9800 5900
F 0 "R14" V 9880 5900 40  0000 C CNN
F 1 "1M0" V 9807 5901 40  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9730 5900 30  0001 C CNN
F 3 "" H 9800 5900 30  0000 C CNN
	1    9800 5900
	1    0    0    1   
$EndComp
$Comp
L R R16
U 1 1 55DB3733
P 10150 5600
F 0 "R16" V 10230 5600 40  0000 C CNN
F 1 "3K3" V 10157 5601 40  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 10080 5600 30  0001 C CNN
F 3 "" H 10150 5600 30  0000 C CNN
	1    10150 5600
	0    -1   1    0   
$EndComp
$Comp
L CONN_01X04 P4
U 1 1 55DB4A3D
P 10600 5000
F 0 "P4" H 10600 5250 50  0000 C CNN
F 1 "NAVIGATOR" V 10700 5000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 10600 5000 60  0001 C CNN
F 3 "" H 10600 5000 60  0000 C CNN
	1    10600 5000
	1    0    0    -1  
$EndComp
$Comp
L +3,3V #PWR02
U 1 1 55DB7074
P 9800 3800
F 0 "#PWR02" H 9800 3760 30  0001 C CNN
F 1 "+3,3V" H 9800 3910 30  0000 C CNN
F 2 "" H 9800 3800 60  0000 C CNN
F 3 "" H 9800 3800 60  0000 C CNN
	1    9800 3800
	1    0    0    -1  
$EndComp
$Comp
L +3,3V #PWR03
U 1 1 55DB74D9
P 9800 6150
F 0 "#PWR03" H 9800 6110 30  0001 C CNN
F 1 "+3,3V" H 9800 6260 30  0000 C CNN
F 2 "" H 9800 6150 60  0000 C CNN
F 3 "" H 9800 6150 60  0000 C CNN
	1    9800 6150
	-1   0    0    1   
$EndComp
$Comp
L +3,3V #PWR04
U 1 1 55DB783F
P 8750 5200
F 0 "#PWR04" H 8750 5160 30  0001 C CNN
F 1 "+3,3V" H 8850 5250 30  0000 C CNN
F 2 "" H 8750 5200 60  0000 C CNN
F 3 "" H 8750 5200 60  0000 C CNN
	1    8750 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 55DB78EE
P 8750 6300
F 0 "#PWR05" H 8750 6300 30  0001 C CNN
F 1 "GND" H 8750 6230 30  0001 C CNN
F 2 "" H 8750 6300 60  0000 C CNN
F 3 "" H 8750 6300 60  0000 C CNN
	1    8750 6300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 55DB7921
P 8750 4800
F 0 "#PWR06" H 8750 4800 30  0001 C CNN
F 1 "GND" H 8750 4730 30  0001 C CNN
F 2 "" H 8750 4800 60  0000 C CNN
F 3 "" H 8750 4800 60  0000 C CNN
	1    8750 4800
	1    0    0    -1  
$EndComp
$Comp
L MIC5209 U1
U 1 1 55DBB6F5
P 2100 7000
F 0 "U1" H 1800 7150 60  0000 C CNN
F 1 "MIC5209" H 2100 7250 60  0000 C CNN
F 2 "Engineering_Conn:SOT223" H 2100 7150 60  0001 C CNN
F 3 "" H 2100 7150 60  0000 C CNN
	1    2100 7000
	1    0    0    -1  
$EndComp
$Comp
L +3,3V #PWR07
U 1 1 55DBC513
P 4250 6900
F 0 "#PWR07" H 4250 6860 30  0001 C CNN
F 1 "+3,3V" H 4250 7050 30  0000 C CNN
F 2 "" H 4250 6900 60  0000 C CNN
F 3 "" H 4250 6900 60  0000 C CNN
	1    4250 6900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 55DBC548
P 2100 7500
F 0 "#PWR08" H 2100 7500 30  0001 C CNN
F 1 "GND" H 2100 7430 30  0001 C CNN
F 2 "" H 2100 7500 60  0000 C CNN
F 3 "" H 2100 7500 60  0000 C CNN
	1    2100 7500
	1    0    0    -1  
$EndComp
$Comp
L +3,3V #PWR09
U 1 1 55DC441D
P 6200 1700
F 0 "#PWR09" H 6200 1660 30  0001 C CNN
F 1 "+3,3V" H 6200 1810 30  0000 C CNN
F 2 "" H 6200 1700 60  0000 C CNN
F 3 "" H 6200 1700 60  0000 C CNN
	1    6200 1700
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 55DC4938
P 4400 1450
F 0 "C16" H 4400 1550 40  0000 L CNN
F 1 "100nF" H 4406 1365 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4438 1300 30  0001 C CNN
F 3 "" H 4400 1450 60  0000 C CNN
	1    4400 1450
	1    0    0    -1  
$EndComp
$Comp
L C C17
U 1 1 55DC4A8F
P 4650 1450
F 0 "C17" H 4650 1550 40  0000 L CNN
F 1 "1.0uF" H 4656 1365 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4688 1300 30  0001 C CNN
F 3 "" H 4650 1450 60  0000 C CNN
	1    4650 1450
	1    0    0    -1  
$EndComp
$Comp
L C C18
U 1 1 55DC4B0F
P 4900 1450
F 0 "C18" H 4900 1550 40  0000 L CNN
F 1 "100nF" H 4906 1365 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4938 1300 30  0001 C CNN
F 3 "" H 4900 1450 60  0000 C CNN
	1    4900 1450
	1    0    0    -1  
$EndComp
$Comp
L C C19
U 1 1 55DC4BA2
P 5150 1450
F 0 "C19" H 5150 1550 40  0000 L CNN
F 1 "2.2uF" H 5156 1365 40  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 5188 1300 30  0001 C CNN
F 3 "" H 5150 1450 60  0000 C CNN
	1    5150 1450
	1    0    0    -1  
$EndComp
$Comp
L TSOP34436 U4
U 1 1 55DC5B66
P 4900 7000
F 0 "U4" H 4700 6750 60  0000 C CNN
F 1 "TSOP34436" H 4900 7250 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 4900 7150 60  0001 C CNN
F 3 "" H 4900 7150 60  0000 C CNN
	1    4900 7000
	-1   0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 55DC4F83
P 2000 1800
F 0 "C1" V 2050 1650 40  0000 L CNN
F 1 "47nF" V 1950 1600 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2038 1650 30  0001 C CNN
F 3 "" H 2000 1800 60  0000 C CNN
	1    2000 1800
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 55DC4FD6
P 1150 1450
F 0 "R1" V 1230 1450 40  0000 C CNN
F 1 "22K" V 1157 1451 40  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 1080 1450 30  0001 C CNN
F 3 "" H 1150 1450 30  0000 C CNN
	1    1150 1450
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 55DC50E1
P 3250 1450
F 0 "R5" V 3330 1450 40  0000 C CNN
F 1 "*" V 3257 1451 40  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 3180 1450 30  0001 C CNN
F 3 "" H 3250 1450 30  0000 C CNN
	1    3250 1450
	0    1    1    0   
$EndComp
$Comp
L +3,3V #PWR010
U 1 1 55DC5200
P 2900 1300
F 0 "#PWR010" H 2900 1260 30  0001 C CNN
F 1 "+3,3V" H 2900 1410 30  0000 C CNN
F 2 "" H 2900 1300 60  0000 C CNN
F 3 "" H 2900 1300 60  0000 C CNN
	1    2900 1300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P1
U 1 1 55DC5214
P 700 1450
F 0 "P1" H 700 1550 50  0000 C CNN
F 1 "Switch 1" H 700 1300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 700 1450 60  0001 C CNN
F 3 "" H 700 1450 60  0000 C CNN
	1    700  1450
	-1   0    0    1   
$EndComp
$Comp
L C C4
U 1 1 55DC551B
P 2650 1800
F 0 "C4" H 2650 1900 40  0000 L CNN
F 1 "*" H 2656 1715 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2688 1650 30  0001 C CNN
F 3 "" H 2650 1800 60  0000 C CNN
	1    2650 1800
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 55DC5BC3
P 2000 850
F 0 "R3" V 2080 850 40  0000 C CNN
F 1 "*" V 2007 851 40  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 1930 850 30  0001 C CNN
F 3 "" H 2000 850 30  0000 C CNN
	1    2000 850 
	0    1    1    0   
$EndComp
$Comp
L C C7
U 1 1 55DC5D3C
P 2900 1800
F 0 "C7" H 2900 1900 40  0000 L CNN
F 1 "100nF" H 2906 1715 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2938 1650 30  0001 C CNN
F 3 "" H 2900 1800 60  0000 C CNN
	1    2900 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 55DC6155
P 1450 2050
F 0 "#PWR011" H 1450 2050 30  0001 C CNN
F 1 "GND" H 1450 1980 30  0001 C CNN
F 2 "" H 1450 2050 60  0000 C CNN
F 3 "" H 1450 2050 60  0000 C CNN
	1    1450 2050
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 55DC802B
P 2000 3400
F 0 "C2" V 2050 3250 40  0000 L CNN
F 1 "12nF" V 1950 3200 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2038 3250 30  0001 C CNN
F 3 "" H 2000 3400 60  0000 C CNN
	1    2000 3400
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 55DC8031
P 1150 3050
F 0 "R2" V 1230 3050 40  0000 C CNN
F 1 "22K" V 1157 3051 40  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 1080 3050 30  0001 C CNN
F 3 "" H 1150 3050 30  0000 C CNN
	1    1150 3050
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 55DC8037
P 3250 3050
F 0 "R6" V 3330 3050 40  0000 C CNN
F 1 "1M0" V 3257 3051 40  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 3180 3050 30  0001 C CNN
F 3 "" H 3250 3050 30  0000 C CNN
	1    3250 3050
	0    1    1    0   
$EndComp
$Comp
L +3,3V #PWR012
U 1 1 55DC803E
P 2900 2900
F 0 "#PWR012" H 2900 2860 30  0001 C CNN
F 1 "+3,3V" H 2900 3010 30  0000 C CNN
F 2 "" H 2900 2900 60  0000 C CNN
F 3 "" H 2900 2900 60  0000 C CNN
	1    2900 2900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P2
U 1 1 55DC8044
P 700 3050
F 0 "P2" H 700 3150 50  0000 C CNN
F 1 "Switch 2" H 700 2900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 700 3050 60  0001 C CNN
F 3 "" H 700 3050 60  0000 C CNN
	1    700  3050
	-1   0    0    1   
$EndComp
$Comp
L C C5
U 1 1 55DC804A
P 2650 3400
F 0 "C5" H 2650 3500 40  0000 L CNN
F 1 "0R" H 2656 3315 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2688 3250 30  0001 C CNN
F 3 "" H 2650 3400 60  0000 C CNN
	1    2650 3400
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 55DC8050
P 2000 2450
F 0 "R4" V 2080 2450 40  0000 C CNN
F 1 "*" V 2007 2451 40  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 1930 2450 30  0001 C CNN
F 3 "" H 2000 2450 30  0000 C CNN
	1    2000 2450
	0    1    1    0   
$EndComp
$Comp
L C C8
U 1 1 55DC8056
P 2900 3400
F 0 "C8" H 2900 3500 40  0000 L CNN
F 1 "100nF" H 2906 3315 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2938 3250 30  0001 C CNN
F 3 "" H 2900 3400 60  0000 C CNN
	1    2900 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 55DC8061
P 1450 3650
F 0 "#PWR013" H 1450 3650 30  0001 C CNN
F 1 "GND" H 1450 3580 30  0001 C CNN
F 2 "" H 1450 3650 60  0000 C CNN
F 3 "" H 1450 3650 60  0000 C CNN
	1    1450 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 55DC87C7
P 3250 4450
F 0 "#PWR014" H 3250 4450 30  0001 C CNN
F 1 "GND" H 3250 4380 30  0001 C CNN
F 2 "" H 3250 4450 60  0000 C CNN
F 3 "" H 3250 4450 60  0000 C CNN
	1    3250 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 55DC8DC4
P 4400 1750
F 0 "#PWR015" H 4400 1750 30  0001 C CNN
F 1 "GND" H 4400 1680 30  0001 C CNN
F 2 "" H 4400 1750 60  0000 C CNN
F 3 "" H 4400 1750 60  0000 C CNN
	1    4400 1750
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 55DCDAB0
P 4200 3400
F 0 "R8" V 4280 3400 40  0000 C CNN
F 1 "10K" V 4207 3401 40  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 4130 3400 30  0001 C CNN
F 3 "" H 4200 3400 30  0000 C CNN
	1    4200 3400
	0    1    1    0   
$EndComp
$Comp
L +3,3V #PWR016
U 1 1 55DCDB06
P 4000 3350
F 0 "#PWR016" H 4000 3310 30  0001 C CNN
F 1 "+3,3V" H 4000 3460 30  0000 C CNN
F 2 "" H 4000 3350 60  0000 C CNN
F 3 "" H 4000 3350 60  0000 C CNN
	1    4000 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 55DCF595
P 8100 1850
F 0 "#PWR017" H 8100 1850 30  0001 C CNN
F 1 "GND" H 8100 1780 30  0001 C CNN
F 2 "" H 8100 1850 60  0000 C CNN
F 3 "" H 8100 1850 60  0000 C CNN
	1    8100 1850
	1    0    0    -1  
$EndComp
$Comp
L +3,3V #PWR018
U 1 1 55DCF5A9
P 8000 1850
F 0 "#PWR018" H 8000 1810 30  0001 C CNN
F 1 "+3,3V" H 8000 1960 30  0000 C CNN
F 2 "" H 8000 1850 60  0000 C CNN
F 3 "" H 8000 1850 60  0000 C CNN
	1    8000 1850
	-1   0    0    1   
$EndComp
$Comp
L BS250 Q1
U 1 1 55DD1C66
P 9250 2350
F 0 "Q1" H 9250 2201 40  0000 R CNN
F 1 "BS250" H 9250 2500 40  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9120 2452 29  0001 C CNN
F 3 "" H 9250 2350 60  0000 C CNN
	1    9250 2350
	1    0    0    1   
$EndComp
$Comp
L +3,3V #PWR019
U 1 1 55DD297B
P 9350 2550
F 0 "#PWR019" H 9350 2510 30  0001 C CNN
F 1 "+3,3V" H 9350 2660 30  0000 C CNN
F 2 "" H 9350 2550 60  0000 C CNN
F 3 "" H 9350 2550 60  0000 C CNN
	1    9350 2550
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X05 P5
U 1 1 55DEE81D
P 850 6050
F 0 "P5" H 850 6350 50  0000 C CNN
F 1 "JTAG" V 950 6050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05" H 850 6050 60  0001 C CNN
F 3 "" H 850 6050 60  0000 C CNN
	1    850  6050
	-1   0    0    1   
$EndComp
Text Label 1050 6250 0    60   ~ 0
TCK
Text Label 1050 6150 0    60   ~ 0
TMS
Text Label 1050 6050 0    60   ~ 0
TDO
Text Label 1050 5950 0    60   ~ 0
TDI
Text Label 7200 3800 0    60   ~ 0
TCK
Text Label 7200 3900 0    60   ~ 0
TMS
Text Label 7200 4000 0    60   ~ 0
TDI
Text Label 7200 4100 0    60   ~ 0
TDO
$Comp
L GND #PWR020
U 1 1 55DF3203
P 1400 5900
F 0 "#PWR020" H 1400 5650 50  0001 C CNN
F 1 "GND" H 1400 5750 50  0000 C CNN
F 2 "" H 1400 5900 60  0000 C CNN
F 3 "" H 1400 5900 60  0000 C CNN
	1    1400 5900
	1    0    0    -1  
$EndComp
$Comp
L C C21
U 1 1 55DFF116
P 1600 7200
F 0 "C21" H 1625 7300 50  0000 L CNN
F 1 "100nF" H 1625 7100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1638 7050 30  0001 C CNN
F 3 "" H 1600 7200 60  0000 C CNN
	1    1600 7200
	1    0    0    -1  
$EndComp
$Comp
L Mini_DIN_6_TE P3
U 1 1 55E042BB
P 850 7000
F 0 "P3" H 850 7400 50  0000 C CNN
F 1 "Mini_DIN_6_TE" V 950 7000 50  0000 C CNN
F 2 "connectors:Mini_DIN_6_TE_Connectivity" H 850 7000 60  0001 C CNN
F 3 "" H 850 7000 60  0000 C CNN
	1    850  7000
	-1   0    0    1   
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 55E05E39
P 3550 3550
F 0 "SW1" H 3700 3660 50  0000 C CNN
F 1 "RESET" H 3350 3650 50  0000 C CNN
F 2 "connectors:SWITCH_TAC_H7.3" H 3550 3550 60  0001 C CNN
F 3 "" H 3550 3550 60  0000 C CNN
	1    3550 3550
	1    0    0    -1  
$EndComp
Text Label 3850 3550 0    60   ~ 0
RESET
Text Label 8850 1900 0    60   ~ 0
RESET
Text Label 8350 4500 2    60   ~ 0
NPOS
Text Label 7200 5300 0    60   ~ 0
NPOS
Text Label 8350 5500 2    60   ~ 0
NNEG
Text Label 7200 5400 0    60   ~ 0
NNEG
Text Label 7200 5200 0    60   ~ 0
S2OUT
Text Label 1300 2750 2    60   ~ 0
S2OUT
Text Label 7200 5100 0    60   ~ 0
S2RESET
Text Label 3500 3050 0    60   ~ 0
S2RESET
Text Label 1300 1150 2    60   ~ 0
S1OUT
Text Label 4400 2900 2    60   ~ 0
S1OUT
Text Label 4400 2800 2    60   ~ 0
S1RESET
Text Label 3500 1450 0    60   ~ 0
S1RESET
Text Label 4400 2700 2    60   ~ 0
IRDATA
Text Label 5350 7000 0    60   ~ 0
IRDATA
Text Label 1050 6800 0    60   ~ 0
SCL
Text Label 1050 6900 0    60   ~ 0
SDA
Text Label 1050 7200 0    60   ~ 0
TxD
Text Label 1050 7300 0    60   ~ 0
RxD
Text Label 7200 2900 0    60   ~ 0
RxD
Text Label 7200 3000 0    60   ~ 0
TxD
Text Label 7200 3100 0    60   ~ 0
SCL
Text Label 7200 3200 0    60   ~ 0
SDA
$Comp
L Led_x2 D3
U 1 1 5608FB89
P 1800 4600
F 0 "D3" H 1800 4825 50  0000 C CNN
F 1 "Led_x2" H 1800 4350 50  0000 C CNN
F 2 "Engineering_Conn:LED-3MM-2" H 1800 4600 60  0001 C CNN
F 3 "" H 1800 4600 60  0000 C CNN
	1    1800 4600
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5608EA2A
P 2350 4500
F 0 "R7" V 2430 4500 50  0000 C CNN
F 1 "1K2" V 2350 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2280 4500 30  0001 C CNN
F 3 "" H 2350 4500 30  0000 C CNN
	1    2350 4500
	0    1    1    0   
$EndComp
$Comp
L R R17
U 1 1 5608EAB9
P 2350 4700
F 0 "R17" V 2430 4700 50  0000 C CNN
F 1 "4K7" V 2350 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2280 4700 30  0001 C CNN
F 3 "" H 2350 4700 30  0000 C CNN
	1    2350 4700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR021
U 1 1 5608ECFD
P 1450 4900
F 0 "#PWR021" H 1450 4650 50  0001 C CNN
F 1 "GND" H 1450 4750 50  0000 C CNN
F 2 "" H 1450 4900 60  0000 C CNN
F 3 "" H 1450 4900 60  0000 C CNN
	1    1450 4900
	1    0    0    -1  
$EndComp
Text Label 2500 4500 0    60   ~ 0
RED
Text Label 2500 4700 0    60   ~ 0
GREEN
Text Label 7200 3300 0    60   ~ 0
RED
Text Label 7200 3400 0    60   ~ 0
GREEN
$Comp
L AT42QT1012 U3
U 1 1 55DC8025
P 2000 2900
F 0 "U3" H 1750 3200 60  0000 C CNN
F 1 "AT42QT1012" H 2000 2600 60  0000 C CNN
F 2 "Engineering_Conn:SOT23-6" H 2000 2600 60  0001 C CNN
F 3 "" H 2000 2600 60  0000 C CNN
	1    2000 2900
	1    0    0    -1  
$EndComp
$Comp
L AT42QT1011 U2
U 1 1 561887FB
P 2000 1300
F 0 "U2" H 1750 1600 60  0000 C CNN
F 1 "AT42QT1011" H 2000 1000 60  0000 C CNN
F 2 "Engineering_Conn:SOT23-6" H 2000 1000 60  0001 C CNN
F 3 "" H 2000 1000 60  0000 C CNN
	1    2000 1300
	1    0    0    -1  
$EndComp
Text Notes 1700 3750 0    60   ~ 0
* Not mounted
Wire Wire Line
	5600 5900 6100 5900
Connection ~ 5700 5900
Connection ~ 5800 5900
Connection ~ 5900 5900
Wire Wire Line
	9700 4400 9700 4600
Wire Wire Line
	9600 4400 10000 4400
Connection ~ 9800 4400
Wire Wire Line
	9900 4400 9900 4600
Wire Wire Line
	9700 4900 9700 5100
Wire Wire Line
	9900 4900 9900 5100
Wire Wire Line
	9150 5000 10400 5000
Connection ~ 9900 5000
Connection ~ 9700 5000
Wire Wire Line
	10400 4950 10400 5050
Connection ~ 10400 5000
Wire Wire Line
	10400 4400 10400 4850
Wire Wire Line
	10400 5600 10400 5150
Wire Wire Line
	9600 5600 10000 5600
Connection ~ 9800 5600
Wire Wire Line
	9700 5400 9700 5600
Wire Wire Line
	9900 5400 9900 5600
Wire Wire Line
	9150 4250 9150 5900
Connection ~ 9150 5000
Wire Wire Line
	8950 4400 9300 4400
Wire Wire Line
	8950 5600 9300 5600
Wire Wire Line
	9800 4250 9800 4400
Connection ~ 9150 4600
Connection ~ 9150 5400
Wire Wire Line
	8950 5750 9150 5750
Connection ~ 9150 5750
Wire Wire Line
	9800 5600 9800 5750
Wire Wire Line
	8750 3850 9800 3850
Wire Wire Line
	8750 3850 8750 4200
Connection ~ 9150 3850
Wire Wire Line
	2100 7400 2100 7500
Wire Wire Line
	1400 7400 5100 7400
Wire Wire Line
	2550 7000 4450 7000
Connection ~ 2750 7000
Connection ~ 3000 7000
Connection ~ 3250 7000
Connection ~ 3500 7000
Connection ~ 3750 7000
Connection ~ 4000 7000
Connection ~ 4250 7000
Connection ~ 2750 7400
Connection ~ 3000 7400
Connection ~ 3250 7400
Connection ~ 3500 7400
Connection ~ 3750 7400
Connection ~ 4000 7400
Wire Wire Line
	8750 5800 8750 6300
Wire Wire Line
	3250 3700 3250 4000
Connection ~ 3250 3900
Wire Wire Line
	3900 3900 3900 4000
Wire Wire Line
	1450 1300 1450 2050
Connection ~ 2650 2000
Wire Wire Line
	2500 1800 2500 1450
Wire Wire Line
	2150 1800 2500 1800
Wire Wire Line
	1500 1300 1450 1300
Wire Wire Line
	1450 2000 2900 2000
Connection ~ 1450 2000
Wire Wire Line
	1300 1450 1500 1450
Wire Wire Line
	1500 1450 1500 1800
Wire Wire Line
	1500 1800 1850 1800
Wire Wire Line
	1300 1150 1500 1150
Wire Wire Line
	1500 1150 1500 850 
Wire Wire Line
	1500 850  1850 850 
Wire Wire Line
	2150 850  2650 850 
Wire Wire Line
	2650 850  2650 1650
Wire Wire Line
	2500 1150 2650 1150
Connection ~ 2650 1150
Wire Wire Line
	2900 1300 2900 1650
Connection ~ 2900 1300
Wire Wire Line
	2500 1450 3100 1450
Wire Wire Line
	2900 1300 2500 1300
Wire Wire Line
	1450 2900 1450 3650
Connection ~ 2650 3600
Wire Wire Line
	2500 3400 2500 3050
Wire Wire Line
	2150 3400 2500 3400
Wire Wire Line
	1500 2900 1450 2900
Wire Wire Line
	1450 3600 2900 3600
Connection ~ 1450 3600
Wire Wire Line
	1300 3050 1500 3050
Wire Wire Line
	1500 3050 1500 3400
Wire Wire Line
	1500 3400 1850 3400
Wire Wire Line
	1300 2750 1500 2750
Wire Wire Line
	1500 2750 1500 2450
Wire Wire Line
	1500 2450 1850 2450
Wire Wire Line
	2150 2450 2650 2450
Wire Wire Line
	2650 2450 2650 3250
Wire Wire Line
	2500 2750 2650 2750
Connection ~ 2650 2750
Wire Wire Line
	2900 2900 2900 3250
Connection ~ 2900 2900
Wire Wire Line
	2500 3050 3100 3050
Wire Wire Line
	2900 2900 2500 2900
Wire Wire Line
	3100 4350 3900 4350
Wire Wire Line
	3250 4300 3250 4450
Wire Wire Line
	4400 1600 4400 1750
Wire Wire Line
	4400 1650 5150 1650
Connection ~ 4650 1650
Connection ~ 4900 1650
Wire Wire Line
	4400 1250 5350 1250
Connection ~ 4650 1250
Connection ~ 4900 1250
Connection ~ 5150 1250
Wire Wire Line
	1050 7000 1650 7000
Connection ~ 2100 7400
Wire Wire Line
	8700 2100 9350 2100
Wire Wire Line
	9350 2100 9350 2150
Wire Wire Line
	4250 6900 4250 7050
Wire Wire Line
	4250 7400 4250 7350
Wire Wire Line
	4000 7400 4000 7350
Wire Wire Line
	3750 7400 3750 7350
Wire Wire Line
	3500 7400 3500 7350
Wire Wire Line
	3250 7400 3250 7350
Wire Wire Line
	3000 7400 3000 7350
Wire Wire Line
	3000 7000 3000 7050
Wire Wire Line
	3250 7000 3250 7050
Wire Wire Line
	3500 7000 3500 7050
Wire Wire Line
	3750 7000 3750 7050
Wire Wire Line
	4000 7000 4000 7050
Wire Wire Line
	8950 6250 8950 6150
Wire Wire Line
	8950 5850 8950 5750
Connection ~ 9700 5600
Wire Wire Line
	9800 6150 9800 6050
Connection ~ 9900 5600
Wire Wire Line
	10300 5600 10400 5600
Wire Wire Line
	10300 4400 10400 4400
Connection ~ 9900 4400
Wire Wire Line
	9150 3850 9150 3950
Connection ~ 9700 4400
Wire Wire Line
	9800 3800 9800 3950
Wire Wire Line
	2900 2000 2900 1950
Wire Wire Line
	2650 2000 2650 1950
Wire Wire Line
	900  1450 1000 1450
Wire Wire Line
	1000 3050 900  3050
Wire Wire Line
	2900 3600 2900 3550
Wire Wire Line
	2650 3550 2650 3600
Wire Wire Line
	3400 1450 3500 1450
Wire Wire Line
	3400 3050 3500 3050
Connection ~ 4400 1650
Wire Wire Line
	4650 1600 4650 1650
Wire Wire Line
	4900 1600 4900 1650
Wire Wire Line
	5150 1650 5150 1600
Wire Wire Line
	4400 1250 4400 1300
Wire Wire Line
	4650 1250 4650 1300
Wire Wire Line
	4900 1250 4900 1300
Wire Wire Line
	5150 1250 5150 1300
Wire Wire Line
	5700 1700 6200 1700
Connection ~ 5800 1700
Connection ~ 5900 1700
Connection ~ 6000 1700
Wire Wire Line
	5350 1250 5350 1700
Wire Wire Line
	5350 1700 5500 1700
Connection ~ 5400 1700
Connection ~ 3250 4350
Wire Wire Line
	3900 4350 3900 4300
Connection ~ 3900 3900
Wire Wire Line
	4400 3400 4350 3400
Wire Wire Line
	3850 3900 4400 3900
Wire Wire Line
	3250 3700 4400 3700
Wire Wire Line
	1050 5850 1400 5850
Wire Wire Line
	1400 5850 1400 5900
Wire Wire Line
	8500 1850 8500 2500
Wire Wire Line
	8500 2500 7200 2500
Wire Wire Line
	8800 1850 8800 2400
Wire Wire Line
	8800 2400 7200 2400
Wire Wire Line
	7200 2300 9050 2300
Wire Wire Line
	8700 1850 8700 2100
Wire Wire Line
	8600 1850 8600 2200
Wire Wire Line
	8600 2200 7200 2200
Wire Wire Line
	8200 1850 8200 2000
Wire Wire Line
	8200 2000 7200 2000
Wire Wire Line
	8400 1850 8400 2100
Wire Wire Line
	8400 2100 7200 2100
Wire Wire Line
	5600 5900 5600 6050
Wire Wire Line
	1600 7000 1600 7050
Connection ~ 1600 7000
Wire Wire Line
	1400 6700 1400 7400
Wire Wire Line
	1400 7100 1050 7100
Wire Wire Line
	1600 7350 1600 7400
Connection ~ 1600 7400
Wire Wire Line
	1400 6700 1050 6700
Connection ~ 1400 7100
Wire Wire Line
	3850 3550 4400 3550
Wire Wire Line
	4400 3550 4400 3400
Wire Wire Line
	3250 3550 3100 3550
Wire Wire Line
	3100 3550 3100 4350
Wire Wire Line
	4000 3350 4000 3400
Wire Wire Line
	4000 3400 4050 3400
Wire Wire Line
	8850 1900 8300 1900
Wire Wire Line
	8300 1900 8300 1850
Connection ~ 1500 1150
Connection ~ 1500 1450
Connection ~ 1500 2750
Connection ~ 1500 3050
Connection ~ 2500 3050
Connection ~ 2500 1450
Connection ~ 9800 3850
Wire Wire Line
	1500 4600 1450 4600
Wire Wire Line
	1450 4600 1450 4900
Wire Wire Line
	2100 4500 2200 4500
Wire Wire Line
	2100 4700 2200 4700
Wire Wire Line
	8750 6250 9150 6250
Connection ~ 8950 6250
Connection ~ 4250 7400
Connection ~ 5600 5900
$Comp
L CP C3
U 1 1 5619F734
P 2750 7200
F 0 "C3" H 2775 7300 50  0000 L CNN
F 1 "22uf/10V" H 2350 7100 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeA_EIA-3216_Reflow" H 2788 7050 30  0001 C CNN
F 3 "" H 2750 7200 60  0000 C CNN
	1    2750 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 7000 2750 7050
Wire Wire Line
	2750 7350 2750 7400
$Comp
L CP C20
U 1 1 561A0BBC
P 9150 6050
F 0 "C20" H 9175 6150 50  0000 L CNN
F 1 "10uF/16V" H 9175 5950 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeA_EIA-3216_Reflow" H 9188 5900 30  0001 C CNN
F 3 "" H 9150 6050 60  0000 C CNN
	1    9150 6050
	1    0    0    -1  
$EndComp
Connection ~ 8750 6250
Wire Wire Line
	9150 6250 9150 6200
$Comp
L CONN_01X01 P6
U 1 1 561A23E2
P 5300 7400
F 0 "P6" H 5300 7500 50  0000 C CNN
F 1 "CHASSIS" H 5550 7400 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01" H 5300 7400 60  0001 C CNN
F 3 "" H 5300 7400 60  0000 C CNN
	1    5300 7400
	1    0    0    -1  
$EndComp
Connection ~ 4900 7400
Wire Wire Line
	9150 5400 8950 5400
Wire Wire Line
	8950 4600 9150 4600
$Comp
L BAV99 D1
U 1 1 59C25B9A
P 9700 5250
F 0 "D1" H 9700 5150 50  0000 C CNN
F 1 "BAV99" V 9800 5050 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9700 5100 50  0001 C CNN
F 3 "" H 9700 5350 50  0001 C CNN
	1    9700 5250
	0    1    1    0   
$EndComp
$Comp
L BAV99 D1
U 2 1 59C25CAA
P 9700 4750
F 0 "D1" H 9700 4650 50  0000 C CNN
F 1 "BAV99" V 9800 4550 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9700 4600 50  0001 C CNN
F 3 "" H 9700 4850 50  0001 C CNN
	2    9700 4750
	0    1    1    0   
$EndComp
$Comp
L BAV99 D2
U 1 1 59C274F4
P 9900 4750
F 0 "D2" H 9900 4850 50  0000 C CNN
F 1 "BAV99" V 9800 4600 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9900 4600 50  0001 C CNN
F 3 "" H 9900 4850 50  0001 C CNN
	1    9900 4750
	0    -1   -1   0   
$EndComp
$Comp
L BAV99 D2
U 2 1 59C27642
P 9900 5250
F 0 "D2" H 9900 5350 50  0000 C CNN
F 1 "BAV99" V 9800 5100 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9900 5100 50  0001 C CNN
F 3 "" H 9900 5350 50  0001 C CNN
	2    9900 5250
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
