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
P 8600 5350
F 0 "#PWR01" H 8600 5100 50  0001 C CNN
F 1 "GND" H 8600 5200 50  0000 C CNN
F 2 "" H 8600 5350 60  0000 C CNN
F 3 "" H 8600 5350 60  0000 C CNN
	1    8600 5350
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR02
U 1 1 56C8D5C2
P 8700 1400
F 0 "#PWR02" H 8700 1250 50  0001 C CNN
F 1 "+12V" H 8700 1540 50  0000 C CNN
F 2 "" H 8700 1400 60  0000 C CNN
F 3 "" H 8700 1400 60  0000 C CNN
	1    8700 1400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 56C8D5D8
P 8100 800
F 0 "#PWR03" H 8100 650 50  0001 C CNN
F 1 "+5V" H 8100 940 50  0000 C CNN
F 2 "" H 8100 800 60  0000 C CNN
F 3 "" H 8100 800 60  0000 C CNN
	1    8100 800 
	1    0    0    -1  
$EndComp
$Comp
L POLOLU_A4988 UZ1
U 1 1 56C8D5FC
P 7500 2550
F 0 "UZ1" H 7500 3000 60  0000 C CNN
F 1 "POLOLU_A4988" V 7500 2550 50  0000 C CNN
F 2 "My Shit:A4988" H 7500 2550 60  0001 C CNN
F 3 "" H 7500 2550 60  0000 C CNN
	1    7500 2550
	-1   0    0    1   
$EndComp
$Comp
L POLOLU_A4988 UY1
U 1 1 56C8D630
P 7500 3650
F 0 "UY1" H 7500 4100 60  0000 C CNN
F 1 "POLOLU_A4988" V 7500 3650 50  0000 C CNN
F 2 "My Shit:A4988" H 7500 3650 60  0001 C CNN
F 3 "" H 7500 3650 60  0000 C CNN
	1    7500 3650
	-1   0    0    1   
$EndComp
$Comp
L POLOLU_A4988 UX1
U 1 1 56C8D666
P 7500 4750
F 0 "UX1" H 7500 5200 60  0000 C CNN
F 1 "POLOLU_A4988" V 7500 4750 50  0000 C CNN
F 2 "My Shit:A4988" H 7500 4750 60  0001 C CNN
F 3 "" H 7500 4750 60  0000 C CNN
	1    7500 4750
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X04 PZ1
U 1 1 56C8D8D1
P 9100 2550
F 0 "PZ1" H 9100 2800 50  0000 C CNN
F 1 "CONN_01X04" V 9200 2550 50  0000 C CNN
F 2 "Sockets_MOLEX_KK-System:Socket_MOLEX-KK-RM2-54mm_Lock_4pin_straight" H 9100 2550 60  0001 C CNN
F 3 "" H 9100 2550 60  0000 C CNN
	1    9100 2550
	1    0    0    1   
$EndComp
$Comp
L CONN_01X04 PY1
U 1 1 56C8D918
P 9100 3650
F 0 "PY1" H 9100 3900 50  0000 C CNN
F 1 "CONN_01X04" V 9200 3650 50  0000 C CNN
F 2 "Sockets_MOLEX_KK-System:Socket_MOLEX-KK-RM2-54mm_Lock_4pin_straight" H 9100 3650 60  0001 C CNN
F 3 "" H 9100 3650 60  0000 C CNN
	1    9100 3650
	1    0    0    1   
$EndComp
$Comp
L CONN_01X04 PX1
U 1 1 56C8D93D
P 9100 4750
F 0 "PX1" H 9100 5000 50  0000 C CNN
F 1 "CONN_01X04" V 9200 4750 50  0000 C CNN
F 2 "Sockets_MOLEX_KK-System:Socket_MOLEX-KK-RM2-54mm_Lock_4pin_straight" H 9100 4750 60  0001 C CNN
F 3 "" H 9100 4750 60  0000 C CNN
	1    9100 4750
	1    0    0    1   
$EndComp
$Comp
L CP C6
U 1 1 56E149A0
P 9500 3200
F 0 "C6" H 9525 3300 50  0000 L CNN
F 1 "47uF" H 9525 3100 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D6.3mm_P2.50mm" H 9538 3050 50  0001 C CNN
F 3 "" H 9500 3200 50  0000 C CNN
	1    9500 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 56E14B8E
P 9500 3350
F 0 "#PWR04" H 9500 3100 50  0001 C CNN
F 1 "GND" H 9500 3200 50  0000 C CNN
F 2 "" H 9500 3350 50  0000 C CNN
F 3 "" H 9500 3350 50  0000 C CNN
	1    9500 3350
	1    0    0    -1  
$EndComp
$Comp
L CP C7
U 1 1 56E1A3BE
P 9500 4250
F 0 "C7" H 9525 4350 50  0000 L CNN
F 1 "47uF" H 9525 4150 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D6.3mm_P2.50mm" H 9538 4100 50  0001 C CNN
F 3 "" H 9500 4250 50  0000 C CNN
	1    9500 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 56E1A465
P 9500 4400
F 0 "#PWR05" H 9500 4150 50  0001 C CNN
F 1 "GND" H 9500 4250 50  0000 C CNN
F 2 "" H 9500 4400 50  0000 C CNN
F 3 "" H 9500 4400 50  0000 C CNN
	1    9500 4400
	1    0    0    -1  
$EndComp
$Comp
L CP C5
U 1 1 56E1A868
P 9050 1700
F 0 "C5" H 9075 1800 50  0000 L CNN
F 1 "47uF" H 9075 1600 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D6.3mm_P2.50mm" H 9088 1550 50  0001 C CNN
F 3 "" H 9050 1700 50  0000 C CNN
	1    9050 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 56E1A982
P 9050 1850
F 0 "#PWR06" H 9050 1600 50  0001 C CNN
F 1 "GND" H 9050 1700 50  0000 C CNN
F 2 "" H 9050 1850 50  0000 C CNN
F 3 "" H 9050 1850 50  0000 C CNN
	1    9050 1850
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 Z_uSTEP1
U 1 1 56E1CDC2
P 6450 1450
F 0 "Z_uSTEP1" H 6450 1650 50  0000 C CNN
F 1 "CONN_02X03" H 6450 1250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 6450 250 50  0001 C CNN
F 3 "" H 6450 250 50  0000 C CNN
	1    6450 1450
	0    1    1    0   
$EndComp
$Comp
L CONN_02X03 Y_uSTEP1
U 1 1 59936BF7
P 5850 1450
F 0 "Y_uSTEP1" H 5850 1650 50  0000 C CNN
F 1 "CONN_02X03" H 5850 1250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 5850 250 50  0001 C CNN
F 3 "" H 5850 250 50  0000 C CNN
	1    5850 1450
	0    1    1    0   
$EndComp
$Comp
L CONN_02X03 X_uSTEP1
U 1 1 59936C99
P 5250 1450
F 0 "X_uSTEP1" H 5250 1650 50  0000 C CNN
F 1 "CONN_02X03" H 5250 1250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 5250 250 50  0001 C CNN
F 3 "" H 5250 250 50  0000 C CNN
	1    5250 1450
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 PWR1
U 1 1 59939C98
P 10800 1500
F 0 "PWR1" H 10800 1650 50  0000 C CNN
F 1 "CONN_01X02" H 10800 1350 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Altech_AK300-2_P5.00mm" H 10800 1500 50  0001 C CNN
F 3 "" H 10800 1500 50  0001 C CNN
	1    10800 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 59939D20
P 10200 1950
F 0 "#PWR07" H 10200 1700 50  0001 C CNN
F 1 "GND" H 10200 1800 50  0000 C CNN
F 2 "" H 10200 1950 60  0000 C CNN
F 3 "" H 10200 1950 60  0000 C CNN
	1    10200 1950
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR08
U 1 1 59939DF6
P 10200 1250
F 0 "#PWR08" H 10200 1100 50  0001 C CNN
F 1 "+12V" H 10200 1390 50  0000 C CNN
F 2 "" H 10200 1250 60  0000 C CNN
F 3 "" H 10200 1250 60  0000 C CNN
	1    10200 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 59939FC7
P 2100 2300
F 0 "#PWR09" H 2100 2050 50  0001 C CNN
F 1 "GND" H 2100 2150 50  0000 C CNN
F 2 "" H 2100 2300 60  0000 C CNN
F 3 "" H 2100 2300 60  0000 C CNN
	1    2100 2300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR010
U 1 1 5993A1A7
P 2800 1200
F 0 "#PWR010" H 2800 1050 50  0001 C CNN
F 1 "+5V" H 2800 1340 50  0000 C CNN
F 2 "" H 2800 1200 60  0000 C CNN
F 3 "" H 2800 1200 60  0000 C CNN
	1    2800 1200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 VDD_OPT1
U 1 1 5993A842
P 8300 1800
F 0 "VDD_OPT1" H 8300 1950 50  0000 C CNN
F 1 "CONN_01X02" H 8600 1800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 8300 1800 50  0001 C CNN
F 3 "" H 8300 1800 50  0001 C CNN
	1    8300 1800
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x03 LIM_X1
U 1 1 59B196CF
P 6150 6200
F 0 "LIM_X1" H 6150 6400 50  0000 C CNN
F 1 "Conn_01x03" H 6150 6000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6150 6200 50  0001 C CNN
F 3 "" H 6150 6200 50  0001 C CNN
	1    6150 6200
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x03 LIM_Y1
U 1 1 59B1975A
P 6150 6700
F 0 "LIM_Y1" H 6150 6900 50  0000 C CNN
F 1 "Conn_01x03" H 6150 6500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6150 6700 50  0001 C CNN
F 3 "" H 6150 6700 50  0001 C CNN
	1    6150 6700
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x03 LIM_Z1
U 1 1 59B197BF
P 6150 7150
F 0 "LIM_Z1" H 6150 7350 50  0000 C CNN
F 1 "Conn_01x03" H 6150 6950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6150 7150 50  0001 C CNN
F 3 "" H 6150 7150 50  0001 C CNN
	1    6150 7150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 59B19B5C
P 5750 7350
F 0 "#PWR011" H 5750 7100 50  0001 C CNN
F 1 "GND" H 5750 7200 50  0000 C CNN
F 2 "" H 5750 7350 60  0000 C CNN
F 3 "" H 5750 7350 60  0000 C CNN
	1    5750 7350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR012
U 1 1 59B19D76
P 5850 6050
F 0 "#PWR012" H 5850 5900 50  0001 C CNN
F 1 "+5V" H 5850 6190 50  0000 C CNN
F 2 "" H 5850 6050 60  0000 C CNN
F 3 "" H 5850 6050 60  0000 C CNN
	1    5850 6050
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA328P-AU U2
U 1 1 5BA8D447
P 2350 4650
F 0 "U2" H 1600 5900 50  0000 L BNN
F 1 "ATMEGA328P-AU" H 2750 3250 50  0000 L BNN
F 2 "My Shit:My_TQFP-32_7x7mm_Pitch0.8mm" H 2350 4650 50  0001 C CIN
F 3 "" H 2350 4650 50  0001 C CNN
	1    2350 4650
	1    0    0    -1  
$EndComp
$Comp
L LM317_3PinPackage U1
U 1 1 5BA8D9B2
P 1650 1300
F 0 "U1" H 1500 1425 50  0000 C CNN
F 1 "LM317_3PinPackage" H 1650 1425 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 1650 1550 50  0001 C CIN
F 3 "" H 1650 1300 50  0001 C CNN
	1    1650 1300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR013
U 1 1 5BA936FB
P 1050 3350
F 0 "#PWR013" H 1050 3200 50  0001 C CNN
F 1 "+5V" H 1050 3490 50  0000 C CNN
F 2 "" H 1050 3350 60  0000 C CNN
F 3 "" H 1050 3350 60  0000 C CNN
	1    1050 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5BA93B37
P 1300 6000
F 0 "#PWR014" H 1300 5750 50  0001 C CNN
F 1 "GND" H 1300 5850 50  0000 C CNN
F 2 "" H 1300 6000 60  0000 C CNN
F 3 "" H 1300 6000 60  0000 C CNN
	1    1300 6000
	1    0    0    -1  
$EndComp
NoConn ~ 1450 4900
NoConn ~ 1450 5000
NoConn ~ 3350 4400
NoConn ~ 3350 4500
NoConn ~ 3350 4600
NoConn ~ 3350 4700
NoConn ~ 3350 4800
NoConn ~ 3350 4900
$Comp
L Crystal Y1
U 1 1 5BA93E5A
P 3700 4300
F 0 "Y1" V 3700 4450 50  0000 C CNN
F 1 "16MHz" V 3700 4050 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H 3700 4300 50  0001 C CNN
F 3 "" H 3700 4300 50  0001 C CNN
	1    3700 4300
	0    -1   -1   0   
$EndComp
NoConn ~ 1450 3850
NoConn ~ 1450 4150
$Comp
L GND #PWR015
U 1 1 5BA94E7E
P 4200 4500
F 0 "#PWR015" H 4200 4250 50  0001 C CNN
F 1 "GND" H 4200 4350 50  0000 C CNN
F 2 "" H 4200 4500 60  0000 C CNN
F 3 "" H 4200 4500 60  0000 C CNN
	1    4200 4500
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 5BA94FBF
P 4000 4150
F 0 "C8" V 3950 4000 50  0000 L CNN
F 1 "22pF" V 3950 4200 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 4038 4000 50  0001 C CNN
F 3 "" H 4000 4150 50  0001 C CNN
	1    4000 4150
	0    1    1    0   
$EndComp
$Comp
L C C9
U 1 1 5BA95027
P 4000 4450
F 0 "C9" V 3950 4500 50  0000 L CNN
F 1 "22pF" V 4050 4200 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 4038 4300 50  0001 C CNN
F 3 "" H 4000 4450 50  0001 C CNN
	1    4000 4450
	0    1    1    0   
$EndComp
$Comp
L Conn_01x03 UART1
U 1 1 5BA95931
P 2700 6950
F 0 "UART1" H 2700 7150 50  0000 C CNN
F 1 "Conn_01x03" H 2700 6750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 2700 6950 50  0001 C CNN
F 3 "" H 2700 6950 50  0001 C CNN
	1    2700 6950
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR016
U 1 1 5BA95A1A
P 3050 7150
F 0 "#PWR016" H 3050 6900 50  0001 C CNN
F 1 "GND" H 3050 7000 50  0000 C CNN
F 2 "" H 3050 7150 60  0000 C CNN
F 3 "" H 3050 7150 60  0000 C CNN
	1    3050 7150
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5BA9795D
P 3150 6850
F 0 "R5" V 3050 6800 50  0000 C CNN
F 1 "1K" V 3050 6950 50  0000 C CNN
F 2 "Capacitors_ThroughHole:C_Rect_L4.0mm_W2.5mm_P2.50mm" V 3080 6850 30  0001 C CNN
F 3 "" H 3150 6850 30  0000 C CNN
	1    3150 6850
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5BA9813F
P 3450 6950
F 0 "R6" V 3550 6900 50  0000 C CNN
F 1 "1K" V 3550 7050 50  0000 C CNN
F 2 "Capacitors_ThroughHole:C_Rect_L4.0mm_W2.5mm_P2.50mm" V 3380 6950 30  0001 C CNN
F 3 "" H 3450 6950 30  0000 C CNN
	1    3450 6950
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR017
U 1 1 5BA99D94
P 3600 4700
F 0 "#PWR017" H 3600 4550 50  0001 C CNN
F 1 "+5V" H 3700 4750 50  0000 C CNN
F 2 "" H 3600 4700 60  0000 C CNN
F 3 "" H 3600 4700 60  0000 C CNN
	1    3600 4700
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5BA99DF0
P 3600 4850
F 0 "R7" H 3500 4800 50  0000 C CNN
F 1 "10K" H 3450 4900 50  0000 C CNN
F 2 "Capacitors_ThroughHole:C_Rect_L4.0mm_W2.5mm_P2.50mm" V 3530 4850 30  0001 C CNN
F 3 "" H 3600 4850 30  0000 C CNN
	1    3600 4850
	-1   0    0    1   
$EndComp
$Comp
L Conn_02x03_Odd_Even J1
U 1 1 5BA9AE27
P 3400 2750
F 0 "J1" H 3450 2950 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 3450 2550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 3400 2750 50  0001 C CNN
F 3 "" H 3400 2750 50  0001 C CNN
	1    3400 2750
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR018
U 1 1 5BA9B209
P 3300 2150
F 0 "#PWR018" H 3300 2000 50  0001 C CNN
F 1 "+5V" H 3300 2290 50  0000 C CNN
F 2 "" H 3300 2150 60  0000 C CNN
F 3 "" H 3300 2150 60  0000 C CNN
	1    3300 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 5BA9B343
P 3900 1950
F 0 "#PWR019" H 3900 1700 50  0001 C CNN
F 1 "GND" H 3900 1800 50  0000 C CNN
F 2 "" H 3900 1950 60  0000 C CNN
F 3 "" H 3900 1950 60  0000 C CNN
	1    3900 1950
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 TOOL_CTRL1
U 1 1 5BAA05A2
P 4400 2800
F 0 "TOOL_CTRL1" H 4400 2950 50  0000 C CNN
F 1 "CONN_01X02" H 4400 2650 50  0000 C CNN
F 2 "Sockets_MOLEX_KK-System:Socket_MOLEX-KK-RM2-54mm_Lock_2pin_straight" H 4400 2800 50  0001 C CNN
F 3 "" H 4400 2800 50  0001 C CNN
	1    4400 2800
	1    0    0    1   
$EndComp
$Comp
L GND #PWR020
U 1 1 5BAA09E8
P 4000 2800
F 0 "#PWR020" H 4000 2550 50  0001 C CNN
F 1 "GND" H 4000 2650 50  0000 C CNN
F 2 "" H 4000 2800 60  0000 C CNN
F 3 "" H 4000 2800 60  0000 C CNN
	1    4000 2800
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 RST1
U 1 1 5BAA1178
P 4200 6250
F 0 "RST1" H 4200 6350 50  0000 C CNN
F 1 "Conn_01x02" H 4200 6050 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 4200 6250 50  0001 C CNN
F 3 "" H 4200 6250 50  0001 C CNN
	1    4200 6250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 5BAA1353
P 3900 6550
F 0 "#PWR021" H 3900 6300 50  0001 C CNN
F 1 "GND" H 3900 6400 50  0000 C CNN
F 2 "" H 3900 6550 60  0000 C CNN
F 3 "" H 3900 6550 60  0000 C CNN
	1    3900 6550
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR022
U 1 1 5BAA1F4D
P 1100 1200
F 0 "#PWR022" H 1100 1050 50  0001 C CNN
F 1 "+12V" H 1100 1340 50  0000 C CNN
F 2 "" H 1100 1200 60  0000 C CNN
F 3 "" H 1100 1200 60  0000 C CNN
	1    1100 1200
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5BAA26DC
P 2100 1500
F 0 "R1" H 2000 1450 50  0000 C CNN
F 1 "330R" H 1950 1550 50  0000 C CNN
F 2 "Capacitors_ThroughHole:C_Rect_L4.0mm_W2.5mm_P2.50mm" V 2030 1500 30  0001 C CNN
F 3 "" H 2100 1500 30  0000 C CNN
	1    2100 1500
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 5BAA2972
P 2100 2000
F 0 "R2" H 2000 1950 50  0000 C CNN
F 1 "1K" H 2000 2050 50  0000 C CNN
F 2 "Capacitors_ThroughHole:C_Rect_L4.0mm_W2.5mm_P2.50mm" V 2030 2000 30  0001 C CNN
F 3 "" H 2100 2000 30  0000 C CNN
	1    2100 2000
	-1   0    0    1   
$EndComp
$Comp
L C C4
U 1 1 5BAA3A91
P 1050 3900
F 0 "C4" H 1100 3800 50  0000 L CNN
F 1 "100nF" H 1100 4000 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 1088 3750 50  0001 C CNN
F 3 "" H 1050 3900 50  0001 C CNN
	1    1050 3900
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR023
U 1 1 5BAA3E93
P 1050 4150
F 0 "#PWR023" H 1050 3900 50  0001 C CNN
F 1 "GND" H 1050 4000 50  0000 C CNN
F 2 "" H 1050 4150 60  0000 C CNN
F 3 "" H 1050 4150 60  0000 C CNN
	1    1050 4150
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5BAA49FE
P 1100 1700
F 0 "C2" H 1150 1600 50  0000 L CNN
F 1 "100nF" H 1150 1800 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 1138 1550 50  0001 C CNN
F 3 "" H 1100 1700 50  0001 C CNN
	1    1100 1700
	-1   0    0    1   
$EndComp
$Comp
L C C3
U 1 1 5BAA50BD
P 2800 1700
F 0 "C3" H 2700 1600 50  0000 L CNN
F 1 "1uF" H 2650 1800 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D4.0mm_P2.00mm" H 2838 1550 50  0001 C CNN
F 3 "" H 2800 1700 50  0001 C CNN
	1    2800 1700
	-1   0    0    1   
$EndComp
$Comp
L CP C1
U 1 1 5BAA6B02
P 10200 1650
F 0 "C1" H 10000 1750 50  0000 L CNN
F 1 "470uF" H 9950 1550 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D6.3mm_P2.50mm" H 10238 1500 50  0001 C CNN
F 3 "" H 10200 1650 50  0000 C CNN
	1    10200 1650
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5BAAA50C
P 2450 1300
F 0 "R3" V 2550 1400 50  0000 C CNN
F 1 "10R" V 2550 1200 50  0000 C CNN
F 2 "Capacitors_ThroughHole:C_Rect_L4.0mm_W2.5mm_P2.50mm" V 2380 1300 30  0001 C CNN
F 3 "" H 2450 1300 30  0000 C CNN
	1    2450 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8700 1400 8700 4400
Wire Wire Line
	8700 2200 8100 2200
Wire Wire Line
	8700 3300 8100 3300
Connection ~ 8700 2200
Wire Wire Line
	8700 4400 8100 4400
Connection ~ 8700 3300
Wire Wire Line
	8100 2300 8600 2300
Wire Wire Line
	8600 2300 8600 5350
Wire Wire Line
	8100 2900 8600 2900
Connection ~ 8600 2900
Wire Wire Line
	8100 3400 8600 3400
Connection ~ 8600 3400
Wire Wire Line
	8100 4000 8600 4000
Connection ~ 8600 4000
Wire Wire Line
	8100 4500 8600 4500
Connection ~ 8600 4500
Wire Wire Line
	8100 5100 8600 5100
Connection ~ 8600 5100
Wire Wire Line
	8500 1850 8500 5000
Wire Wire Line
	8500 2800 8100 2800
Wire Wire Line
	8500 5000 8100 5000
Connection ~ 8500 2800
Wire Wire Line
	8500 3900 8100 3900
Connection ~ 8500 3900
Wire Wire Line
	6900 2600 6800 2600
Wire Wire Line
	6800 900  6800 4900
Wire Wire Line
	6800 2700 6900 2700
Wire Wire Line
	6800 3700 6900 3700
Wire Wire Line
	6800 3800 6900 3800
Wire Wire Line
	6800 4800 6900 4800
Wire Wire Line
	6800 4900 6900 4900
Wire Wire Line
	8100 2400 8900 2400
Wire Wire Line
	8100 2600 8900 2600
Wire Wire Line
	8100 2500 8900 2500
Wire Wire Line
	8100 2700 8900 2700
Wire Wire Line
	8100 3500 8900 3500
Wire Wire Line
	8100 3600 8900 3600
Wire Wire Line
	8100 3700 8900 3700
Wire Wire Line
	8100 3800 8900 3800
Wire Wire Line
	8100 4600 8900 4600
Wire Wire Line
	8100 4700 8900 4700
Wire Wire Line
	8100 4800 8900 4800
Wire Wire Line
	8100 4900 8900 4900
Wire Wire Line
	4900 2200 4900 4400
Wire Wire Line
	4900 3300 6900 3300
Wire Wire Line
	4900 4400 6900 4400
Wire Wire Line
	6900 3900 6000 3900
Wire Wire Line
	4100 5000 6900 5000
Wire Wire Line
	6900 4000 6100 4000
Wire Wire Line
	4200 5100 6900 5100
Wire Wire Line
	6900 2900 5600 2900
Wire Wire Line
	6900 2800 5500 2800
Connection ~ 8100 900 
Wire Wire Line
	5150 900  8500 900 
Wire Wire Line
	6350 900  6350 1200
Wire Wire Line
	6450 1200 6450 900 
Connection ~ 6450 900 
Wire Wire Line
	6550 1200 6550 900 
Connection ~ 6550 900 
Wire Wire Line
	6900 2500 6350 2500
Wire Wire Line
	6900 2400 6450 2400
Wire Wire Line
	6900 2300 6550 2300
Wire Wire Line
	8700 3050 9500 3050
Connection ~ 8700 1500
Connection ~ 8700 3050
Wire Wire Line
	8700 4100 9500 4100
Connection ~ 8700 4100
Wire Wire Line
	9050 1850 9050 1850
Wire Wire Line
	9050 1550 9050 1500
Wire Wire Line
	9050 1500 8700 1500
Wire Wire Line
	6450 2400 6450 1700
Wire Wire Line
	6550 2300 6550 1700
Wire Wire Line
	6350 2500 6350 1700
Connection ~ 6800 3800
Connection ~ 6800 4800
Connection ~ 6800 2700
Connection ~ 6800 3700
Wire Wire Line
	5950 900  5950 1200
Wire Wire Line
	5850 1200 5850 900 
Wire Wire Line
	5750 900  5750 1200
Connection ~ 6350 900 
Connection ~ 5950 900 
Connection ~ 5850 900 
Wire Wire Line
	5350 900  5350 1200
Connection ~ 5750 900 
Wire Wire Line
	5250 900  5250 1200
Connection ~ 5350 900 
Wire Wire Line
	5150 900  5150 1200
Connection ~ 5250 900 
Wire Wire Line
	6900 3400 5950 3400
Wire Wire Line
	5950 3400 5950 1700
Wire Wire Line
	5850 1700 5850 3500
Wire Wire Line
	5850 3500 6900 3500
Wire Wire Line
	6900 3600 5750 3600
Wire Wire Line
	5750 3600 5750 1700
Connection ~ 4900 3300
Wire Wire Line
	6900 4500 5350 4500
Wire Wire Line
	5350 4500 5350 1700
Wire Wire Line
	5250 1700 5250 4600
Wire Wire Line
	5250 4600 6900 4600
Wire Wire Line
	6900 4700 5150 4700
Wire Wire Line
	5150 4700 5150 1700
Wire Wire Line
	8500 900  8500 1750
Connection ~ 6800 900 
Connection ~ 6800 2600
Wire Wire Line
	4550 6700 5950 6700
Wire Wire Line
	5750 6300 5750 7350
Wire Wire Line
	5750 7250 5950 7250
Wire Wire Line
	5750 6800 5950 6800
Connection ~ 5750 7250
Wire Wire Line
	5750 6300 5950 6300
Connection ~ 5750 6800
Wire Wire Line
	5850 6050 5850 7050
Wire Wire Line
	5850 7050 5950 7050
Wire Wire Line
	5850 6600 5950 6600
Connection ~ 5850 6600
Wire Wire Line
	5850 6100 5950 6100
Connection ~ 5850 6100
Wire Wire Line
	1950 1300 2300 1300
Wire Wire Line
	2800 1200 2800 1550
Wire Wire Line
	1050 3350 1050 3750
Wire Wire Line
	1050 3650 1450 3650
Wire Wire Line
	1450 3550 1050 3550
Connection ~ 1050 3550
Wire Wire Line
	1300 5650 1300 6000
Wire Wire Line
	1300 5650 1450 5650
Wire Wire Line
	1450 5750 1300 5750
Connection ~ 1300 5750
Wire Wire Line
	1450 5850 1300 5850
Connection ~ 1300 5850
Wire Wire Line
	3350 4150 3850 4150
Wire Wire Line
	3350 4250 3500 4250
Wire Wire Line
	3500 4250 3500 4450
Wire Wire Line
	3500 4450 3850 4450
Connection ~ 3700 4450
Connection ~ 3700 4150
Wire Wire Line
	4150 4150 4200 4150
Wire Wire Line
	4200 4150 4200 4500
Wire Wire Line
	4150 4450 4200 4450
Connection ~ 4200 4450
Wire Wire Line
	2900 7050 3050 7050
Wire Wire Line
	3050 7050 3050 7150
Wire Wire Line
	3350 5150 3650 5150
Wire Wire Line
	3650 5150 3650 6950
Wire Wire Line
	3650 6950 3600 6950
Wire Wire Line
	3350 5250 3550 5250
Wire Wire Line
	3550 5250 3550 6850
Wire Wire Line
	3550 6850 3300 6850
Wire Wire Line
	3300 6950 2900 6950
Wire Wire Line
	2900 6850 3000 6850
Wire Wire Line
	3350 5350 4100 5350
Wire Wire Line
	4100 5350 4100 5000
Wire Wire Line
	3350 5650 4200 5650
Wire Wire Line
	4200 5650 4200 5100
Wire Wire Line
	3350 5000 3900 5000
Wire Wire Line
	3900 4750 3900 6250
Wire Wire Line
	3900 4750 4350 4750
Wire Wire Line
	4350 4750 4350 3850
Wire Wire Line
	4350 3850 3900 3850
Wire Wire Line
	3900 3850 3900 3200
Connection ~ 3600 5000
Wire Wire Line
	3350 4050 3700 4050
Wire Wire Line
	3700 4050 3700 3300
Wire Wire Line
	3700 3300 3400 3300
Wire Wire Line
	3400 3300 3400 2950
Wire Wire Line
	3350 3950 4450 3950
Wire Wire Line
	3600 3950 3600 3400
Wire Wire Line
	3600 3400 3300 3400
Wire Wire Line
	3300 3400 3300 2950
Wire Wire Line
	3800 3850 3350 3850
Wire Wire Line
	3800 2200 3800 3850
Wire Wire Line
	3800 2200 3400 2200
Wire Wire Line
	3400 2200 3400 2450
Wire Wire Line
	3300 2150 3300 2450
Wire Wire Line
	3900 1950 3900 1800
Wire Wire Line
	3900 1800 3500 1800
Wire Wire Line
	3500 1800 3500 2450
Wire Wire Line
	3500 2950 3500 3200
Wire Wire Line
	3500 3200 3900 3200
Wire Wire Line
	3350 5450 6000 5450
Wire Wire Line
	6000 5450 6000 3900
Wire Wire Line
	3350 5750 6100 5750
Wire Wire Line
	6100 5750 6100 4000
Wire Wire Line
	3350 5550 5500 5550
Wire Wire Line
	5500 5550 5500 2800
Wire Wire Line
	5600 2900 5600 5850
Wire Wire Line
	5600 5850 3350 5850
Wire Wire Line
	3350 3550 4900 3550
Connection ~ 4900 3550
Wire Wire Line
	4900 2200 6900 2200
Wire Wire Line
	3350 3650 4650 3650
Wire Wire Line
	4650 3650 4650 6200
Wire Wire Line
	4650 6200 5950 6200
Wire Wire Line
	3350 3750 4550 3750
Wire Wire Line
	4550 3750 4550 6700
Wire Wire Line
	4450 3950 4450 7150
Wire Wire Line
	4450 7150 5950 7150
Connection ~ 3600 3950
Wire Wire Line
	4000 2800 4000 2750
Wire Wire Line
	4000 2750 4200 2750
Wire Wire Line
	3800 3400 4150 3400
Wire Wire Line
	4150 3400 4150 2850
Wire Wire Line
	4150 2850 4200 2850
Connection ~ 3800 3400
Wire Wire Line
	3900 6250 4000 6250
Connection ~ 3900 5000
Wire Wire Line
	4000 6350 3900 6350
Wire Wire Line
	3900 6350 3900 6550
Wire Wire Line
	1350 1300 1100 1300
Wire Wire Line
	1100 1200 1100 1550
Wire Wire Line
	2100 2150 2100 2300
Wire Wire Line
	2100 1300 2100 1350
Connection ~ 2100 1300
Wire Wire Line
	2100 1650 2100 1850
Wire Wire Line
	1650 1600 1650 1750
Wire Wire Line
	1650 1750 2100 1750
Connection ~ 2100 1750
Connection ~ 1050 3650
Wire Wire Line
	1050 4050 1050 4150
Connection ~ 1100 1300
Wire Wire Line
	1100 1850 1100 2250
Wire Wire Line
	1100 2250 2800 2250
Wire Wire Line
	2800 2250 2800 1850
Connection ~ 2800 1300
Connection ~ 2100 2250
Wire Wire Line
	10200 1250 10200 1500
Wire Wire Line
	10200 1450 10600 1450
Wire Wire Line
	10600 1550 10500 1550
Wire Wire Line
	10500 1550 10500 1850
Wire Wire Line
	10500 1850 10200 1850
Wire Wire Line
	10200 1800 10200 1950
Connection ~ 10200 1850
Connection ~ 10200 1450
Wire Wire Line
	2600 1300 2800 1300
Wire Wire Line
	8100 800  8100 900 
$EndSCHEMATC
