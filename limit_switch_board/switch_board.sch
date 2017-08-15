EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:switch_board-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L C C1
U 1 1 596FAAD5
P 4250 2700
F 0 "C1" H 4275 2800 50  0000 L CNN
F 1 "100nF" H 4275 2600 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4288 2550 50  0001 C CNN
F 3 "" H 4250 2700 50  0001 C CNN
	1    4250 2700
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 596FAAFC
P 4600 2050
F 0 "R2" V 4680 2050 50  0000 C CNN
F 1 "1K" V 4600 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4530 2050 50  0001 C CNN
F 3 "" H 4600 2050 50  0001 C CNN
	1    4600 2050
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 596FAB28
P 4250 2200
F 0 "R1" V 4330 2200 50  0000 C CNN
F 1 "10K" V 4250 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4180 2200 50  0001 C CNN
F 3 "" H 4250 2200 50  0001 C CNN
	1    4250 2200
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 596FAB62
P 4600 2350
F 0 "D1" H 4600 2450 50  0000 C CNN
F 1 "LED" H 4600 2250 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 4600 2350 50  0001 C CNN
F 3 "" H 4600 2350 50  0001 C CNN
	1    4600 2350
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X03 J2
U 1 1 596FAF0B
P 5100 2550
F 0 "J2" H 5100 2750 50  0000 C CNN
F 1 "CONN_01X03" V 5200 2550 50  0000 C CNN
F 2 "My Shit:limit_switch_bomba" H 5100 2550 50  0001 C CNN
F 3 "" H 5100 2550 50  0001 C CNN
	1    5100 2550
	1    0    0    1   
$EndComp
Wire Wire Line
	4100 2400 3950 2400
Wire Wire Line
	4100 1850 4100 2400
Wire Wire Line
	3950 2600 3950 2500
Connection ~ 4250 1850
Wire Wire Line
	4250 2350 4250 2550
Connection ~ 4250 2550
Connection ~ 4600 1850
Connection ~ 4250 2850
$Comp
L GND #PWR01
U 1 1 596FB145
P 4250 2850
F 0 "#PWR01" H 4250 2600 50  0001 C CNN
F 1 "GND" H 4250 2700 50  0000 C CNN
F 2 "" H 4250 2850 50  0001 C CNN
F 3 "" H 4250 2850 50  0001 C CNN
	1    4250 2850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 596FB297
P 4250 1850
F 0 "#PWR02" H 4250 1700 50  0001 C CNN
F 1 "+5V" H 4250 1990 50  0000 C CNN
F 2 "" H 4250 1850 50  0001 C CNN
F 3 "" H 4250 1850 50  0001 C CNN
	1    4250 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2050 4250 1850
Wire Wire Line
	4600 1850 4600 1900
Wire Wire Line
	4600 2500 4600 2650
Connection ~ 4600 2550
Wire Wire Line
	4100 2550 4100 2700
Wire Wire Line
	4100 2700 3950 2700
$Comp
L CONN_01X04 J1
U 1 1 596FAAB8
P 3750 2550
F 0 "J1" H 3750 2800 50  0000 C CNN
F 1 "CONN_01X04" V 3850 2550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 3750 2550 50  0001 C CNN
F 3 "" H 3750 2550 50  0001 C CNN
	1    3750 2550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4050 2850 4050 2600
Wire Wire Line
	4050 2600 3950 2600
Wire Wire Line
	4100 2550 4600 2550
Wire Wire Line
	4600 2650 4900 2650
Wire Wire Line
	4050 2850 5400 2850
Wire Wire Line
	4800 2550 4900 2550
Wire Wire Line
	5400 2850 5400 2100
Wire Wire Line
	5400 2100 4900 2100
Wire Wire Line
	4900 2100 4900 2450
Wire Wire Line
	4100 1850 4800 1850
Wire Wire Line
	4800 1850 4800 2550
$EndSCHEMATC
