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
LIBS:pololu_a4988
LIBS:stepper_drivers-cache
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
L GND #PWR01
U 1 1 56C8D5AD
P 8100 5350
F 0 "#PWR01" H 8100 5100 50  0001 C CNN
F 1 "GND" H 8100 5200 50  0000 C CNN
F 2 "" H 8100 5350 60  0000 C CNN
F 3 "" H 8100 5350 60  0000 C CNN
	1    8100 5350
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR02
U 1 1 56C8D5C2
P 8200 1400
F 0 "#PWR02" H 8200 1250 50  0001 C CNN
F 1 "+12V" H 8200 1540 50  0000 C CNN
F 2 "" H 8200 1400 60  0000 C CNN
F 3 "" H 8200 1400 60  0000 C CNN
	1    8200 1400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 56C8D5D8
P 7600 800
F 0 "#PWR03" H 7600 650 50  0001 C CNN
F 1 "+5V" H 7600 940 50  0000 C CNN
F 2 "" H 7600 800 60  0000 C CNN
F 3 "" H 7600 800 60  0000 C CNN
	1    7600 800 
	1    0    0    -1  
$EndComp
$Comp
L POLOLU_A4988 UZ1
U 1 1 56C8D5FC
P 7000 2550
F 0 "UZ1" H 7000 3000 60  0000 C CNN
F 1 "POLOLU_A4988" V 7000 2550 50  0000 C CNN
F 2 "My Shit:A4988" H 7000 2550 60  0001 C CNN
F 3 "" H 7000 2550 60  0000 C CNN
	1    7000 2550
	-1   0    0    1   
$EndComp
$Comp
L POLOLU_A4988 UY1
U 1 1 56C8D630
P 7000 3650
F 0 "UY1" H 7000 4100 60  0000 C CNN
F 1 "POLOLU_A4988" V 7000 3650 50  0000 C CNN
F 2 "My Shit:A4988" H 7000 3650 60  0001 C CNN
F 3 "" H 7000 3650 60  0000 C CNN
	1    7000 3650
	-1   0    0    1   
$EndComp
$Comp
L POLOLU_A4988 UX1
U 1 1 56C8D666
P 7000 4750
F 0 "UX1" H 7000 5200 60  0000 C CNN
F 1 "POLOLU_A4988" V 7000 4750 50  0000 C CNN
F 2 "My Shit:A4988" H 7000 4750 60  0001 C CNN
F 3 "" H 7000 4750 60  0000 C CNN
	1    7000 4750
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X04 PZ1
U 1 1 56C8D8D1
P 8600 2550
F 0 "PZ1" H 8600 2800 50  0000 C CNN
F 1 "CONN_01X04" V 8700 2550 50  0000 C CNN
F 2 "Sockets_MOLEX_KK-System:Socket_MOLEX-KK-RM2-54mm_Lock_4pin_straight" H 8600 2550 60  0001 C CNN
F 3 "" H 8600 2550 60  0000 C CNN
	1    8600 2550
	1    0    0    1   
$EndComp
$Comp
L CONN_01X04 PY1
U 1 1 56C8D918
P 8600 3650
F 0 "PY1" H 8600 3900 50  0000 C CNN
F 1 "CONN_01X04" V 8700 3650 50  0000 C CNN
F 2 "Sockets_MOLEX_KK-System:Socket_MOLEX-KK-RM2-54mm_Lock_4pin_straight" H 8600 3650 60  0001 C CNN
F 3 "" H 8600 3650 60  0000 C CNN
	1    8600 3650
	1    0    0    1   
$EndComp
$Comp
L CONN_01X04 PX1
U 1 1 56C8D93D
P 8600 4750
F 0 "PX1" H 8600 5000 50  0000 C CNN
F 1 "CONN_01X04" V 8700 4750 50  0000 C CNN
F 2 "Sockets_MOLEX_KK-System:Socket_MOLEX-KK-RM2-54mm_Lock_4pin_straight" H 8600 4750 60  0001 C CNN
F 3 "" H 8600 4750 60  0000 C CNN
	1    8600 4750
	1    0    0    1   
$EndComp
$Comp
L R R1
U 1 1 56C8F634
P 6950 900
F 0 "R1" V 7050 900 50  0000 C CNN
F 1 "220R" V 6850 900 50  0000 C CNN
F 2 "Capacitors_ThroughHole:C_Rect_L4.0mm_W2.5mm_P2.50mm" V 6880 900 30  0001 C CNN
F 3 "" H 6950 900 30  0000 C CNN
	1    6950 900 
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 56E14874
P 7600 1400
F 0 "#PWR04" H 7600 1150 50  0001 C CNN
F 1 "GND" H 7600 1250 50  0000 C CNN
F 2 "" H 7600 1400 50  0000 C CNN
F 3 "" H 7600 1400 50  0000 C CNN
	1    7600 1400
	1    0    0    -1  
$EndComp
$Comp
L CP C6
U 1 1 56E149A0
P 9000 3200
F 0 "C6" H 9025 3300 50  0000 L CNN
F 1 "47uF" H 9025 3100 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D6.3mm_P2.50mm" H 9038 3050 50  0001 C CNN
F 3 "" H 9000 3200 50  0000 C CNN
	1    9000 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 56E14B8E
P 9000 3350
F 0 "#PWR05" H 9000 3100 50  0001 C CNN
F 1 "GND" H 9000 3200 50  0000 C CNN
F 2 "" H 9000 3350 50  0000 C CNN
F 3 "" H 9000 3350 50  0000 C CNN
	1    9000 3350
	1    0    0    -1  
$EndComp
$Comp
L CP C7
U 1 1 56E1A3BE
P 9000 4250
F 0 "C7" H 9025 4350 50  0000 L CNN
F 1 "47uF" H 9025 4150 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D6.3mm_P2.50mm" H 9038 4100 50  0001 C CNN
F 3 "" H 9000 4250 50  0000 C CNN
	1    9000 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 56E1A465
P 9000 4400
F 0 "#PWR06" H 9000 4150 50  0001 C CNN
F 1 "GND" H 9000 4250 50  0000 C CNN
F 2 "" H 9000 4400 50  0000 C CNN
F 3 "" H 9000 4400 50  0000 C CNN
	1    9000 4400
	1    0    0    -1  
$EndComp
$Comp
L CP C5
U 1 1 56E1A868
P 8550 1700
F 0 "C5" H 8575 1800 50  0000 L CNN
F 1 "47uF" H 8575 1600 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D6.3mm_P2.50mm" H 8588 1550 50  0001 C CNN
F 3 "" H 8550 1700 50  0000 C CNN
	1    8550 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 56E1A982
P 8550 1850
F 0 "#PWR07" H 8550 1600 50  0001 C CNN
F 1 "GND" H 8550 1700 50  0000 C CNN
F 2 "" H 8550 1850 50  0000 C CNN
F 3 "" H 8550 1850 50  0000 C CNN
	1    8550 1850
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 Z_MICROSTEP1
U 1 1 56E1CDC2
P 5950 1450
F 0 "Z_MICROSTEP1" H 5950 1650 50  0000 C CNN
F 1 "CONN_02X03" H 5950 1250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 5950 250 50  0001 C CNN
F 3 "" H 5950 250 50  0000 C CNN
	1    5950 1450
	0    1    1    0   
$EndComp
$Comp
L CP C4
U 1 1 56E7E91B
P 7600 1200
F 0 "C4" H 7625 1300 50  0000 L CNN
F 1 "10uF" H 7625 1100 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D5.0mm_P2.50mm" H 7638 1050 50  0001 C CNN
F 3 "" H 7600 1200 50  0000 C CNN
	1    7600 1200
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 Y_MICROSTEP1
U 1 1 59936BF7
P 5350 1450
F 0 "Y_MICROSTEP1" H 5350 1650 50  0000 C CNN
F 1 "CONN_02X03" H 5350 1250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 5350 250 50  0001 C CNN
F 3 "" H 5350 250 50  0000 C CNN
	1    5350 1450
	0    1    1    0   
$EndComp
$Comp
L CONN_02X03 X_MICROSTEP1
U 1 1 59936C99
P 4750 1450
F 0 "X_MICROSTEP1" H 4750 1650 50  0000 C CNN
F 1 "CONN_02X03" H 4750 1250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 4750 250 50  0001 C CNN
F 3 "" H 4750 250 50  0000 C CNN
	1    4750 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 1400 8200 4400
Wire Wire Line
	8200 2200 7600 2200
Wire Wire Line
	8200 3300 7600 3300
Connection ~ 8200 2200
Wire Wire Line
	8200 4400 7600 4400
Connection ~ 8200 3300
Wire Wire Line
	7600 2300 8100 2300
Wire Wire Line
	8100 2300 8100 5350
Wire Wire Line
	7600 2900 8100 2900
Connection ~ 8100 2900
Wire Wire Line
	7600 3400 8100 3400
Connection ~ 8100 3400
Wire Wire Line
	7600 4000 8100 4000
Connection ~ 8100 4000
Wire Wire Line
	7600 4500 8100 4500
Connection ~ 8100 4500
Wire Wire Line
	7600 5100 8100 5100
Connection ~ 8100 5100
Wire Wire Line
	7600 800  7600 1050
Wire Wire Line
	8000 1850 8000 5000
Wire Wire Line
	8000 2800 7600 2800
Wire Wire Line
	8000 5000 7600 5000
Connection ~ 8000 2800
Wire Wire Line
	8000 3900 7600 3900
Connection ~ 8000 3900
Wire Wire Line
	6400 2600 6300 2600
Wire Wire Line
	6300 900  6300 4900
Wire Wire Line
	6300 2700 6400 2700
Wire Wire Line
	6300 3700 6400 3700
Wire Wire Line
	6300 3800 6400 3800
Wire Wire Line
	6300 4800 6400 4800
Wire Wire Line
	6300 4900 6400 4900
Wire Wire Line
	7600 2400 8400 2400
Wire Wire Line
	7600 2600 8400 2600
Wire Wire Line
	7600 2500 8400 2500
Wire Wire Line
	7600 2700 8400 2700
Wire Wire Line
	7600 3500 8400 3500
Wire Wire Line
	7600 3600 8400 3600
Wire Wire Line
	7600 3700 8400 3700
Wire Wire Line
	7600 3800 8400 3800
Wire Wire Line
	7600 4600 8400 4600
Wire Wire Line
	7600 4700 8400 4700
Wire Wire Line
	7600 4800 8400 4800
Wire Wire Line
	7600 4900 8400 4900
Wire Wire Line
	4000 2200 6400 2200
Wire Wire Line
	4300 2200 4300 4400
Wire Wire Line
	4300 3300 6400 3300
Wire Wire Line
	4300 4400 6400 4400
Wire Wire Line
	6400 3900 4000 3900
Wire Wire Line
	4000 5000 6400 5000
Wire Wire Line
	6400 4000 4000 4000
Wire Wire Line
	4000 5100 6400 5100
Wire Wire Line
	6400 2900 4000 2900
Wire Wire Line
	6400 2800 4000 2800
Wire Wire Line
	7100 900  8000 900 
Connection ~ 7600 900 
Wire Wire Line
	4650 900  6800 900 
Wire Wire Line
	5850 900  5850 1200
Wire Wire Line
	5950 1200 5950 900 
Connection ~ 5950 900 
Wire Wire Line
	6050 1200 6050 900 
Connection ~ 6050 900 
Wire Wire Line
	6400 2500 5850 2500
Wire Wire Line
	6400 2400 5950 2400
Wire Wire Line
	6400 2300 6050 2300
Wire Wire Line
	7600 1400 7600 1350
Wire Wire Line
	8200 3050 9000 3050
Connection ~ 8200 1500
Connection ~ 8200 3050
Wire Wire Line
	8200 4100 9000 4100
Connection ~ 8200 4100
Wire Wire Line
	8550 1850 8550 1850
Wire Wire Line
	8550 1550 8550 1500
Wire Wire Line
	8550 1500 8200 1500
Wire Wire Line
	5950 2400 5950 1700
Wire Wire Line
	6050 2300 6050 1700
Wire Wire Line
	5850 2500 5850 1700
Connection ~ 6300 3800
Connection ~ 6300 4800
Connection ~ 6300 2700
Connection ~ 6300 3700
Wire Wire Line
	5450 900  5450 1200
Wire Wire Line
	5350 1200 5350 900 
Wire Wire Line
	5250 900  5250 1200
Connection ~ 5850 900 
Connection ~ 5450 900 
Connection ~ 5350 900 
Wire Wire Line
	4850 900  4850 1200
Connection ~ 5250 900 
Wire Wire Line
	4750 900  4750 1200
Connection ~ 4850 900 
Wire Wire Line
	4650 900  4650 1200
Connection ~ 4750 900 
Wire Wire Line
	6400 3400 5450 3400
Wire Wire Line
	5450 3400 5450 1700
Wire Wire Line
	5350 1700 5350 3500
Wire Wire Line
	5350 3500 6400 3500
Wire Wire Line
	6400 3600 5250 3600
Wire Wire Line
	5250 3600 5250 1700
Connection ~ 4300 3300
Wire Wire Line
	6400 4500 4850 4500
Wire Wire Line
	4850 4500 4850 1700
Wire Wire Line
	4750 1700 4750 4600
Wire Wire Line
	4750 4600 6400 4600
Wire Wire Line
	6400 4700 4650 4700
Wire Wire Line
	4650 4700 4650 1700
$Comp
L CONN_01X02 MOT_PWR1
U 1 1 59939C98
P 10050 1550
F 0 "MOT_PWR1" H 10050 1700 50  0000 C CNN
F 1 "CONN_01X02" H 10050 1400 50  0000 C CNN
F 2 "Sockets_MOLEX_KK-System:Socket_MOLEX-KK-RM2-54mm_Lock_2pin_straight" H 10050 1550 50  0001 C CNN
F 3 "" H 10050 1550 50  0001 C CNN
	1    10050 1550
	1    0    0    1   
$EndComp
$Comp
L GND #PWR08
U 1 1 59939D20
P 9600 1150
F 0 "#PWR08" H 9600 900 50  0001 C CNN
F 1 "GND" H 9600 1000 50  0000 C CNN
F 2 "" H 9600 1150 60  0000 C CNN
F 3 "" H 9600 1150 60  0000 C CNN
	1    9600 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1150 9850 1150
Wire Wire Line
	9850 1150 9850 1500
$Comp
L +12V #PWR09
U 1 1 59939DF6
P 9450 1600
F 0 "#PWR09" H 9450 1450 50  0001 C CNN
F 1 "+12V" H 9450 1740 50  0000 C CNN
F 2 "" H 9450 1600 60  0000 C CNN
F 3 "" H 9450 1600 60  0000 C CNN
	1    9450 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1600 9850 1600
$Comp
L CONN_01X02 uC_PWR1
U 1 1 59939FC0
P 10550 2500
F 0 "uC_PWR1" H 10550 2650 50  0000 C CNN
F 1 "CONN_01X02" H 10550 2350 50  0000 C CNN
F 2 "Sockets_MOLEX_KK-System:Socket_MOLEX-KK-RM2-54mm_Lock_2pin_straight" H 10550 2500 50  0001 C CNN
F 3 "" H 10550 2500 50  0001 C CNN
	1    10550 2500
	1    0    0    1   
$EndComp
$Comp
L GND #PWR010
U 1 1 59939FC7
P 10100 2100
F 0 "#PWR010" H 10100 1850 50  0001 C CNN
F 1 "GND" H 10100 1950 50  0000 C CNN
F 2 "" H 10100 2100 60  0000 C CNN
F 3 "" H 10100 2100 60  0000 C CNN
	1    10100 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 2100 10350 2100
Wire Wire Line
	10350 2100 10350 2450
Wire Wire Line
	9950 2550 10350 2550
$Comp
L +5V #PWR011
U 1 1 5993A1A7
P 9950 2550
F 0 "#PWR011" H 9950 2400 50  0001 C CNN
F 1 "+5V" H 9950 2690 50  0000 C CNN
F 2 "" H 9950 2550 60  0000 C CNN
F 3 "" H 9950 2550 60  0000 C CNN
	1    9950 2550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 VDD_OPT1
U 1 1 5993A842
P 7800 1800
F 0 "VDD_OPT1" H 7800 1950 50  0000 C CNN
F 1 "CONN_01X02" H 8100 1800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7800 1800 50  0001 C CNN
F 3 "" H 7800 1800 50  0001 C CNN
	1    7800 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	8000 900  8000 1750
Connection ~ 6300 900 
Connection ~ 6300 2600
$Comp
L CONN_01X02 Z_CTRL1
U 1 1 5993B518
P 3800 2850
F 0 "Z_CTRL1" H 3800 3000 50  0000 C CNN
F 1 "CONN_01X02" H 3850 2650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 3800 2850 50  0001 C CNN
F 3 "" H 3800 2850 50  0001 C CNN
	1    3800 2850
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 Y_CTRL1
U 1 1 5993B7B2
P 3800 3950
F 0 "Y_CTRL1" H 3800 4100 50  0000 C CNN
F 1 "CONN_01X02" H 3800 3750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 3800 3950 50  0001 C CNN
F 3 "" H 3800 3950 50  0001 C CNN
	1    3800 3950
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 X_CTRL1
U 1 1 5993B819
P 3800 5050
F 0 "X_CTRL1" H 3800 5200 50  0000 C CNN
F 1 "CONN_01X02" H 3850 4900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 3800 5050 50  0001 C CNN
F 3 "" H 3800 5050 50  0001 C CNN
	1    3800 5050
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 MOT_ENA1
U 1 1 5993DC9B
P 3800 2200
F 0 "MOT_ENA1" H 3800 2300 50  0000 C CNN
F 1 "CONN_01X01" H 3800 2050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 3800 2200 50  0001 C CNN
F 3 "" H 3800 2200 50  0001 C CNN
	1    3800 2200
	-1   0    0    1   
$EndComp
Connection ~ 4300 2200
$EndSCHEMATC