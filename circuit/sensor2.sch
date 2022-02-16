EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Řízení 3fáz motoru - sensor otočení"
Date "2021-11-23"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R2
U 1 1 61AB1022
P 3800 2250
F 0 "R2" H 3850 2250 50  0000 L CNN
F 1 "3k3" V 3800 2250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3730 2250 50  0001 C CNN
F 3 "~" H 3800 2250 50  0001 C CNN
	1    3800 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2100 3800 2000
$Comp
L power:GNDD #PWR02
U 1 1 61B116FB
P 3800 2450
F 0 "#PWR02" H 3800 2200 50  0001 C CNN
F 1 "GNDD" H 3804 2295 50  0001 C CNN
F 2 "" H 3800 2450 50  0001 C CNN
F 3 "" H 3800 2450 50  0001 C CNN
	1    3800 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2400 3800 2450
$Comp
L power:GNDD #PWR05
U 1 1 61B1D8BF
P 6100 1800
F 0 "#PWR05" H 6100 1550 50  0001 C CNN
F 1 "GNDD" H 6104 1645 50  0001 C CNN
F 2 "" H 6100 1800 50  0001 C CNN
F 3 "" H 6100 1800 50  0001 C CNN
	1    6100 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1750 6100 1800
Wire Wire Line
	5750 1550 5750 2000
Connection ~ 5750 2000
Wire Wire Line
	5200 1550 5750 1550
$Comp
L power:GNDD #PWR016
U 1 1 61E8316E
P 4450 7050
F 0 "#PWR016" H 4450 6800 50  0001 C CNN
F 1 "GNDD" H 4454 6895 50  0001 C CNN
F 2 "" H 4450 7050 50  0001 C CNN
F 3 "" H 4450 7050 50  0001 C CNN
	1    4450 7050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 61E85184
P 4450 5850
F 0 "#PWR015" H 4450 5700 50  0001 C CNN
F 1 "+5V" H 4465 6023 50  0000 C CNN
F 2 "" H 4450 5850 50  0001 C CNN
F 3 "" H 4450 5850 50  0001 C CNN
	1    4450 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 5850 4450 5950
Wire Wire Line
	4450 6950 4450 7050
$Comp
L power:+5V #PWR06
U 1 1 61B0FEDB
P 2100 2750
F 0 "#PWR06" H 2100 2600 50  0001 C CNN
F 1 "+5V" H 2115 2923 50  0000 C CNN
F 2 "" H 2100 2750 50  0001 C CNN
F 3 "" H 2100 2750 50  0001 C CNN
	1    2100 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4050 2100 4500
$Comp
L Device:R R1
U 1 1 61B68D76
P 2100 3900
F 0 "R1" H 2150 3900 50  0000 L CNN
F 1 "240" V 2100 3900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2030 3900 50  0001 C CNN
F 3 "~" H 2100 3900 50  0001 C CNN
	1    2100 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR010
U 1 1 61B64F52
P 2100 4500
F 0 "#PWR010" H 2100 4250 50  0001 C CNN
F 1 "GNDD" H 2104 4345 50  0001 C CNN
F 2 "" H 2100 4500 50  0001 C CNN
F 3 "" H 2100 4500 50  0001 C CNN
	1    2100 4500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J1
U 1 1 61A1DFBF
P 1800 3200
F 0 "J1" H 1908 3581 50  0000 C CNN
F 1 "opto" H 1600 3200 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 1800 3200 50  0001 C CNN
F 3 "~" H 1800 3200 50  0001 C CNN
	1    1800 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3100 2000 3100
Wire Wire Line
	3000 2000 3500 2000
Wire Wire Line
	2100 3400 2000 3400
Wire Wire Line
	2100 3400 2100 3750
Wire Wire Line
	2000 3000 2100 3000
Wire Wire Line
	2100 3000 2100 2750
$Comp
L Connector:Conn_01x05_Male J2
U 1 1 61ABDD14
P 9450 3200
F 0 "J2" H 9422 3224 50  0000 R CNN
F 1 "output" H 9422 3133 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 9450 3200 50  0001 C CNN
F 3 "~" H 9450 3200 50  0001 C CNN
	1    9450 3200
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 61AC5715
P 9150 2800
F 0 "#PWR07" H 9150 2650 50  0001 C CNN
F 1 "+5V" H 9165 2973 50  0000 C CNN
F 2 "" H 9150 2800 50  0001 C CNN
F 3 "" H 9150 2800 50  0001 C CNN
	1    9150 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 3100 8150 3100
Wire Wire Line
	5750 2000 7500 2000
Wire Wire Line
	9250 3300 8150 3300
Wire Wire Line
	8150 3300 8150 4400
$Comp
L power:GNDD #PWR09
U 1 1 61B00CEE
P 9150 3650
F 0 "#PWR09" H 9150 3400 50  0001 C CNN
F 1 "GNDD" H 9154 3495 50  0001 C CNN
F 2 "" H 9150 3650 50  0001 C CNN
F 3 "" H 9150 3650 50  0001 C CNN
	1    9150 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 3400 9150 3650
Wire Wire Line
	9150 3400 9250 3400
Wire Wire Line
	9250 3000 9150 3000
Wire Wire Line
	9150 2800 9150 3000
Wire Wire Line
	5450 6300 5450 5950
Connection ~ 5450 5950
Wire Wire Line
	5450 6600 5450 6950
Connection ~ 5450 6950
Wire Wire Line
	6000 5950 6000 6300
Wire Wire Line
	5450 5950 6000 5950
Wire Wire Line
	6000 6950 6000 6600
Wire Wire Line
	5450 6950 6000 6950
$Comp
L Device:CP C4
U 1 1 61B576DB
P 5450 6450
F 0 "C4" H 5568 6496 50  0000 L CNN
F 1 "100μ/25V" H 5500 6350 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 5488 6300 50  0001 C CNN
F 3 "~" H 5450 6450 50  0001 C CNN
	1    5450 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 61B58D78
P 6000 6450
F 0 "C5" H 6115 6496 50  0000 L CNN
F 1 "1μ" H 6115 6405 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L16.5mm_W4.7mm_P15.00mm_MKT" H 6038 6300 50  0001 C CNN
F 3 "~" H 6000 6450 50  0001 C CNN
	1    6000 6450
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 61BF58D2
P 9150 3000
F 0 "#FLG0101" H 9150 3075 50  0001 C CNN
F 1 "PWR_FLAG" H 9150 3173 50  0001 C CNN
F 2 "" H 9150 3000 50  0001 C CNN
F 3 "~" H 9150 3000 50  0001 C CNN
	1    9150 3000
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 61C05A01
P 9150 3400
F 0 "#FLG0102" H 9150 3475 50  0001 C CNN
F 1 "PWR_FLAG" H 9150 3573 50  0001 C CNN
F 2 "" H 9150 3400 50  0001 C CNN
F 3 "~" H 9150 3400 50  0001 C CNN
	1    9150 3400
	0    -1   -1   0   
$EndComp
Connection ~ 9150 3000
Connection ~ 9150 3400
$Comp
L 4xxx:4069 U1
U 2 1 62042860
P 5400 2000
F 0 "U1" H 5400 2317 50  0000 C CNN
F 1 "4069" H 5400 2226 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5400 2000 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 5400 2000 50  0001 C CNN
	2    5400 2000
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4069 U1
U 1 1 620846C1
P 4650 2000
F 0 "U1" H 4650 2317 50  0000 C CNN
F 1 "4069" H 4650 2226 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 4650 2000 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 4650 2000 50  0001 C CNN
	1    4650 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2000 5100 2000
Wire Wire Line
	5700 2000 5750 2000
$Comp
L Device:R R8
U 1 1 6209B541
P 5050 1550
F 0 "R8" V 4950 1500 50  0000 L CNN
F 1 "100k" V 5050 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4980 1550 50  0001 C CNN
F 3 "~" H 5050 1550 50  0001 C CNN
	1    5050 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 1550 4350 1550
Wire Wire Line
	4350 1550 4350 2000
$Comp
L Device:R R5
U 1 1 620B09CD
P 4100 2000
F 0 "R5" V 4000 1950 50  0000 L CNN
F 1 "33k" V 4100 2000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4030 2000 50  0001 C CNN
F 3 "~" H 4100 2000 50  0001 C CNN
	1    4100 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 2000 4350 2000
Connection ~ 4350 2000
Wire Wire Line
	5800 1550 5750 1550
Connection ~ 5750 1550
Wire Wire Line
	6100 1300 6100 1350
Wire Wire Line
	6650 1300 6550 1300
$Comp
L power:+5V #PWR014
U 1 1 621A779F
P 7750 1150
F 0 "#PWR014" H 7750 1000 50  0001 C CNN
F 1 "+5V" H 7765 1323 50  0000 C CNN
F 2 "" H 7750 1150 50  0001 C CNN
F 3 "" H 7750 1150 50  0001 C CNN
	1    7750 1150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 621A71C9
P 6800 1300
F 0 "R11" V 6700 1250 50  0000 L CNN
F 1 "220" V 6800 1300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6730 1300 50  0001 C CNN
F 3 "~" H 6800 1300 50  0001 C CNN
	1    6800 1300
	0    -1   1    0   
$EndComp
$Comp
L Transistor_FET:BS170 T1
U 1 1 620B8789
P 6000 1550
F 0 "T1" H 6204 1596 50  0000 L CNN
F 1 "BS170" H 6204 1505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6200 1475 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BS170-D.PDF" H 6000 1550 50  0001 L CNN
	1    6000 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D1
U 1 1 61B1CCDF
P 6400 1300
F 0 "D1" V 6439 1182 50  0000 R CNN
F 1 "LED_ALT" V 6348 1182 50  0001 R CNN
F 2 "LED_THT:LED_D3.0mm" H 6400 1300 50  0001 C CNN
F 3 "~" H 6400 1300 50  0001 C CNN
	1    6400 1300
	1    0    0    1   
$EndComp
Wire Wire Line
	6100 1300 6250 1300
$Comp
L Device:R R3
U 1 1 62244A83
P 3800 3450
F 0 "R3" H 3850 3450 50  0000 L CNN
F 1 "3k3" V 3800 3450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3730 3450 50  0001 C CNN
F 3 "~" H 3800 3450 50  0001 C CNN
	1    3800 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3300 3800 3200
$Comp
L power:GNDD #PWR08
U 1 1 62244A8A
P 3800 3650
F 0 "#PWR08" H 3800 3400 50  0001 C CNN
F 1 "GNDD" H 3804 3495 50  0001 C CNN
F 2 "" H 3800 3650 50  0001 C CNN
F 3 "" H 3800 3650 50  0001 C CNN
	1    3800 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3600 3800 3650
$Comp
L power:GNDD #PWR012
U 1 1 62244A91
P 6100 3000
F 0 "#PWR012" H 6100 2750 50  0001 C CNN
F 1 "GNDD" H 6104 2845 50  0001 C CNN
F 2 "" H 6100 3000 50  0001 C CNN
F 3 "" H 6100 3000 50  0001 C CNN
	1    6100 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2950 6100 3000
Wire Wire Line
	5750 2750 5750 3200
Connection ~ 5750 3200
Wire Wire Line
	5200 2750 5750 2750
Wire Wire Line
	5750 3200 7600 3200
$Comp
L 4xxx:4069 U1
U 4 1 62244A9D
P 5400 3200
F 0 "U1" H 5400 3517 50  0000 C CNN
F 1 "4069" H 5400 3426 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5400 3200 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 5400 3200 50  0001 C CNN
	4    5400 3200
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4069 U1
U 3 1 62244AA3
P 4650 3200
F 0 "U1" H 4650 3517 50  0000 C CNN
F 1 "4069" H 4650 3426 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 4650 3200 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 4650 3200 50  0001 C CNN
	3    4650 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3200 5100 3200
Wire Wire Line
	5700 3200 5750 3200
$Comp
L Device:R R9
U 1 1 62244AAB
P 5050 2750
F 0 "R9" V 4950 2700 50  0000 L CNN
F 1 "100k" V 5050 2750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4980 2750 50  0001 C CNN
F 3 "~" H 5050 2750 50  0001 C CNN
	1    5050 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 2750 4350 2750
Wire Wire Line
	4350 2750 4350 3200
$Comp
L Device:R R6
U 1 1 62244AB3
P 4100 3200
F 0 "R6" V 4000 3150 50  0000 L CNN
F 1 "33k" V 4100 3200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4030 3200 50  0001 C CNN
F 3 "~" H 4100 3200 50  0001 C CNN
	1    4100 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 3200 4350 3200
Connection ~ 4350 3200
Wire Wire Line
	5800 2750 5750 2750
Connection ~ 5750 2750
Wire Wire Line
	6100 2500 6100 2550
Wire Wire Line
	7050 2500 6950 2500
Wire Wire Line
	6650 2500 6550 2500
$Comp
L Device:R R12
U 1 1 62244AC8
P 6800 2500
F 0 "R12" V 6700 2450 50  0000 L CNN
F 1 "220" V 6800 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6730 2500 50  0001 C CNN
F 3 "~" H 6800 2500 50  0001 C CNN
	1    6800 2500
	0    -1   1    0   
$EndComp
$Comp
L Transistor_FET:BS170 T2
U 1 1 62244ACE
P 6000 2750
F 0 "T2" H 6204 2796 50  0000 L CNN
F 1 "BS170" H 6204 2705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6200 2675 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BS170-D.PDF" H 6000 2750 50  0001 L CNN
	1    6000 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D2
U 1 1 62244AD4
P 6400 2500
F 0 "D2" V 6439 2382 50  0000 R CNN
F 1 "LED_ALT" V 6348 2382 50  0001 R CNN
F 2 "LED_THT:LED_D3.0mm" H 6400 2500 50  0001 C CNN
F 3 "~" H 6400 2500 50  0001 C CNN
	1    6400 2500
	1    0    0    1   
$EndComp
Wire Wire Line
	6100 2500 6250 2500
$Comp
L Device:R R4
U 1 1 622782CD
P 3800 4650
F 0 "R4" H 3850 4650 50  0000 L CNN
F 1 "3k3" V 3800 4650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3730 4650 50  0001 C CNN
F 3 "~" H 3800 4650 50  0001 C CNN
	1    3800 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4500 3800 4400
$Comp
L power:GNDD #PWR011
U 1 1 622782D4
P 3800 4850
F 0 "#PWR011" H 3800 4600 50  0001 C CNN
F 1 "GNDD" H 3804 4695 50  0001 C CNN
F 2 "" H 3800 4850 50  0001 C CNN
F 3 "" H 3800 4850 50  0001 C CNN
	1    3800 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4800 3800 4850
$Comp
L power:GNDD #PWR013
U 1 1 622782DB
P 6100 4200
F 0 "#PWR013" H 6100 3950 50  0001 C CNN
F 1 "GNDD" H 6104 4045 50  0001 C CNN
F 2 "" H 6100 4200 50  0001 C CNN
F 3 "" H 6100 4200 50  0001 C CNN
	1    6100 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4150 6100 4200
Wire Wire Line
	5750 3950 5750 4400
Connection ~ 5750 4400
Wire Wire Line
	5200 3950 5750 3950
Wire Wire Line
	5750 4400 7700 4400
$Comp
L 4xxx:4069 U1
U 5 1 622782E7
P 5400 4400
F 0 "U1" H 5400 4717 50  0000 C CNN
F 1 "4069" H 5400 4626 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5400 4400 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 5400 4400 50  0001 C CNN
	5    5400 4400
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4069 U1
U 6 1 622782ED
P 4650 4400
F 0 "U1" H 4650 4717 50  0000 C CNN
F 1 "4069" H 4650 4626 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 4650 4400 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 4650 4400 50  0001 C CNN
	6    4650 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4400 5100 4400
Wire Wire Line
	5700 4400 5750 4400
$Comp
L Device:R R10
U 1 1 622782F5
P 5050 3950
F 0 "R10" V 4950 3900 50  0000 L CNN
F 1 "100k" V 5050 3950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4980 3950 50  0001 C CNN
F 3 "~" H 5050 3950 50  0001 C CNN
	1    5050 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 3950 4350 3950
Wire Wire Line
	4350 3950 4350 4400
$Comp
L Device:R R7
U 1 1 622782FD
P 4100 4400
F 0 "R7" V 4000 4350 50  0000 L CNN
F 1 "33k" V 4100 4400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4030 4400 50  0001 C CNN
F 3 "~" H 4100 4400 50  0001 C CNN
	1    4100 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 4400 4350 4400
Connection ~ 4350 4400
Wire Wire Line
	5800 3950 5750 3950
Connection ~ 5750 3950
Wire Wire Line
	6100 3700 6100 3750
Wire Wire Line
	7050 3700 6950 3700
Wire Wire Line
	6650 3700 6550 3700
$Comp
L Device:R R13
U 1 1 62278312
P 6800 3700
F 0 "R13" V 6700 3650 50  0000 L CNN
F 1 "220" V 6800 3700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6730 3700 50  0001 C CNN
F 3 "~" H 6800 3700 50  0001 C CNN
	1    6800 3700
	0    -1   1    0   
$EndComp
$Comp
L Transistor_FET:BS170 T3
U 1 1 62278318
P 6000 3950
F 0 "T3" H 6204 3996 50  0000 L CNN
F 1 "BS170" H 6204 3905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6200 3875 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BS170-D.PDF" H 6000 3950 50  0001 L CNN
	1    6000 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D3
U 1 1 6227831E
P 6400 3700
F 0 "D3" V 6439 3582 50  0000 R CNN
F 1 "LED_ALT" V 6348 3582 50  0001 R CNN
F 2 "LED_THT:LED_D3.0mm" H 6400 3700 50  0001 C CNN
F 3 "~" H 6400 3700 50  0001 C CNN
	1    6400 3700
	1    0    0    1   
$EndComp
Wire Wire Line
	6100 3700 6250 3700
Wire Wire Line
	8150 3100 8150 2000
$Comp
L Device:Jumper JP1
U 1 1 623068AA
P 7450 1300
F 0 "JP1" H 7450 1564 50  0000 C CNN
F 1 "LED" H 7450 1473 50  0000 C CNN
F 2 "" H 7450 1300 50  0001 C CNN
F 3 "~" H 7450 1300 50  0001 C CNN
	1    7450 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 1300 7750 1150
Wire Wire Line
	6950 1300 7050 1300
Wire Wire Line
	7050 1300 7050 2500
Connection ~ 7050 1300
Wire Wire Line
	7050 1300 7150 1300
Connection ~ 7050 2500
Wire Wire Line
	7050 2500 7050 3700
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 6233E0E9
P 3100 5350
F 0 "J3" V 3254 5162 50  0000 R CNN
F 1 "TEST_IN" V 3163 5162 50  0000 R CNN
F 2 "" H 3100 5350 50  0001 C CNN
F 3 "~" H 3100 5350 50  0001 C CNN
	1    3100 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 5150 3200 4400
Connection ~ 3200 4400
Wire Wire Line
	3100 5150 3100 3200
Wire Wire Line
	2000 3300 2450 3300
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 62353705
P 7600 5350
F 0 "J4" V 7754 5162 50  0000 R CNN
F 1 "TEST_OUT" V 7663 5162 50  0000 R CNN
F 2 "" H 7600 5350 50  0001 C CNN
F 3 "~" H 7600 5350 50  0001 C CNN
	1    7600 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7700 5150 7700 4400
Wire Wire Line
	7600 5150 7600 3200
Wire Wire Line
	7500 2000 7500 5150
Connection ~ 7500 2000
Wire Wire Line
	7500 2000 8150 2000
Connection ~ 7600 3200
Wire Wire Line
	7600 3200 9250 3200
Connection ~ 7700 4400
Wire Wire Line
	7700 4400 8150 4400
$Comp
L 4xxx:4069 U1
U 7 1 62360C86
P 4850 6450
F 0 "U1" H 5080 6496 50  0000 L CNN
F 1 "4069" H 5080 6405 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 4850 6450 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4069ubms.pdf" H 4850 6450 50  0001 C CNN
	7    4850 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 6950 4850 6950
Wire Wire Line
	4450 5950 4850 5950
Wire Wire Line
	3000 2000 3000 5150
Wire Wire Line
	2450 3100 2450 2000
Wire Wire Line
	2450 2000 3000 2000
Connection ~ 3000 2000
Wire Wire Line
	2000 3200 3100 3200
Connection ~ 3100 3200
Wire Wire Line
	2450 3300 2450 4400
Wire Wire Line
	2450 4400 3200 4400
$Comp
L Device:C C1
U 1 1 624244CB
P 3500 2250
F 0 "C1" H 3615 2296 50  0000 L CNN
F 1 "1n" H 3615 2205 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L16.5mm_W4.7mm_P15.00mm_MKT" H 3538 2100 50  0001 C CNN
F 3 "~" H 3500 2250 50  0001 C CNN
	1    3500 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2100 3500 2000
Connection ~ 3500 2000
Wire Wire Line
	3500 2400 3500 2450
$Comp
L power:GNDD #PWR01
U 1 1 62443E55
P 3500 2450
F 0 "#PWR01" H 3500 2200 50  0001 C CNN
F 1 "GNDD" H 3504 2295 50  0001 C CNN
F 2 "" H 3500 2450 50  0001 C CNN
F 3 "" H 3500 2450 50  0001 C CNN
	1    3500 2450
	1    0    0    -1  
$EndComp
Connection ~ 3800 2000
Wire Wire Line
	3800 2000 3950 2000
Wire Wire Line
	3500 2000 3800 2000
Connection ~ 3800 3200
Wire Wire Line
	3800 3200 3950 3200
Wire Wire Line
	3100 3200 3500 3200
Connection ~ 3800 4400
Wire Wire Line
	3800 4400 3950 4400
Wire Wire Line
	3200 4400 3500 4400
$Comp
L Device:C C2
U 1 1 6246FEE1
P 3500 3450
F 0 "C2" H 3615 3496 50  0000 L CNN
F 1 "1n" H 3615 3405 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L16.5mm_W4.7mm_P15.00mm_MKT" H 3538 3300 50  0001 C CNN
F 3 "~" H 3500 3450 50  0001 C CNN
	1    3500 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3300 3500 3200
Wire Wire Line
	3500 3600 3500 3650
$Comp
L power:GNDD #PWR03
U 1 1 6246FEE9
P 3500 3650
F 0 "#PWR03" H 3500 3400 50  0001 C CNN
F 1 "GNDD" H 3504 3495 50  0001 C CNN
F 2 "" H 3500 3650 50  0001 C CNN
F 3 "" H 3500 3650 50  0001 C CNN
	1    3500 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 62473A06
P 3500 4650
F 0 "C3" H 3615 4696 50  0000 L CNN
F 1 "1n" H 3615 4605 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L16.5mm_W4.7mm_P15.00mm_MKT" H 3538 4500 50  0001 C CNN
F 3 "~" H 3500 4650 50  0001 C CNN
	1    3500 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4500 3500 4400
Wire Wire Line
	3500 4800 3500 4850
$Comp
L power:GNDD #PWR04
U 1 1 62473A0E
P 3500 4850
F 0 "#PWR04" H 3500 4600 50  0001 C CNN
F 1 "GNDD" H 3504 4695 50  0001 C CNN
F 2 "" H 3500 4850 50  0001 C CNN
F 3 "" H 3500 4850 50  0001 C CNN
	1    3500 4850
	1    0    0    -1  
$EndComp
Connection ~ 3500 3200
Wire Wire Line
	3500 3200 3800 3200
Connection ~ 3500 4400
Wire Wire Line
	3500 4400 3800 4400
Connection ~ 4850 5950
Wire Wire Line
	4850 5950 5450 5950
Connection ~ 4850 6950
Wire Wire Line
	4850 6950 5450 6950
$EndSCHEMATC