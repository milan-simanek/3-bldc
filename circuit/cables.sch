EESchema Schematic File Version 4
EELAYER 30 0
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
L misi_chips:TCST1103 O1
U 1 1 61F4DF5B
P 1900 1850
F 0 "O1" H 1900 2167 50  0000 C CNN
F 1 "TCST1103" H 1900 2076 50  0000 C CNN
F 2 "OptoDevice:Everlight_ITR8307" H 1900 1650 50  0001 C CNN
F 3 "http://www.ystone.com.tw/en/data/goods/IRPT/Photo%20Interrupters-Reflective%20Type.pdf" H 1900 1950 50  0001 C CNN
	1    1900 1850
	1    0    0    -1  
$EndComp
$Comp
L misi_chips:TCST1103 O2
U 1 1 61F4EA01
P 1900 2350
F 0 "O2" H 1900 2667 50  0000 C CNN
F 1 "TCST1103" H 1900 2576 50  0000 C CNN
F 2 "OptoDevice:Everlight_ITR8307" H 1900 2150 50  0001 C CNN
F 3 "http://www.ystone.com.tw/en/data/goods/IRPT/Photo%20Interrupters-Reflective%20Type.pdf" H 1900 2450 50  0001 C CNN
	1    1900 2350
	1    0    0    -1  
$EndComp
$Comp
L misi_chips:TCST1103 O3
U 1 1 61F4F58F
P 1900 2850
F 0 "O3" H 1900 3167 50  0000 C CNN
F 1 "TCST1103" H 1900 3076 50  0000 C CNN
F 2 "OptoDevice:Everlight_ITR8307" H 1900 2650 50  0001 C CNN
F 3 "http://www.ystone.com.tw/en/data/goods/IRPT/Photo%20Interrupters-Reflective%20Type.pdf" H 1900 2950 50  0001 C CNN
	1    1900 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 61F50BD2
P 1500 2600
F 0 "R1" H 1570 2646 50  0000 L CNN
F 1 "68" V 1500 2550 50  0000 L CNN
F 2 "" V 1430 2600 50  0001 C CNN
F 3 "~" H 1500 2600 50  0001 C CNN
	1    1500 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2450 1600 2450
Wire Wire Line
	1500 2750 1600 2750
Wire Wire Line
	1600 2250 1500 2250
Wire Wire Line
	1500 2250 1500 1950
Wire Wire Line
	1500 1950 1600 1950
Wire Wire Line
	1600 1750 1500 1750
Wire Wire Line
	1500 1750 1500 1500
Wire Wire Line
	1500 1500 2300 1500
Wire Wire Line
	2500 1750 2300 1750
$Comp
L Connector:Conn_01x05_Female J1
U 1 1 61F54532
P 3400 2450
F 0 "J1" H 3428 2476 50  0000 L CNN
F 1 "Sensor-in" H 3428 2385 50  0000 L CNN
F 2 "" H 3400 2450 50  0001 C CNN
F 3 "~" H 3400 2450 50  0001 C CNN
	1    3400 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2250 2500 2250
Wire Wire Line
	2500 2250 2500 1750
Wire Wire Line
	3200 2350 2400 2350
Wire Wire Line
	2400 2350 2400 1950
Wire Wire Line
	2400 1950 2200 1950
Wire Wire Line
	2300 1750 2300 1500
Connection ~ 2300 1750
Wire Wire Line
	2300 1750 2200 1750
Wire Wire Line
	2300 1750 2300 2250
Wire Wire Line
	2300 2750 2200 2750
Wire Wire Line
	2200 2250 2300 2250
Connection ~ 2300 2250
Wire Wire Line
	2300 2250 2300 2750
Wire Wire Line
	2200 2450 3200 2450
Wire Wire Line
	2200 2950 2400 2950
Wire Wire Line
	2400 2950 2400 2550
Wire Wire Line
	2400 2550 3200 2550
Wire Wire Line
	3200 2650 2500 2650
Wire Wire Line
	2500 2650 2500 3100
Wire Wire Line
	2500 3100 1500 3100
Wire Wire Line
	1500 3100 1500 2950
Wire Wire Line
	1500 2950 1600 2950
Text Label 2850 2250 0    50   ~ 0
+5V
Text Label 2850 2350 0    50   ~ 0
HOME
Text Label 2850 2450 0    50   ~ 0
STEP-A
Text Label 2850 2550 0    50   ~ 0
STEP-B
Text Label 2850 2650 0    50   ~ 0
GND
$Comp
L Connector:Conn_01x05_Female J3
U 1 1 61F5FF59
P 4850 2450
F 0 "J3" H 5050 2500 50  0000 C CNN
F 1 "Sensor-out" H 5150 2400 50  0000 C CNN
F 2 "" H 4850 2450 50  0001 C CNN
F 3 "~" H 4850 2450 50  0001 C CNN
	1    4850 2450
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J6
U 1 1 61F60FEA
P 9300 2450
F 0 "J6" H 9272 2424 50  0000 R CNN
F 1 "Arduino D0" H 9272 2333 50  0000 R CNN
F 2 "" H 9300 2450 50  0001 C CNN
F 3 "~" H 9300 2450 50  0001 C CNN
	1    9300 2450
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Male J7
U 1 1 61F621E6
P 9300 3850
F 0 "J7" H 9272 3824 50  0000 R CNN
F 1 "Arduino D8" H 9272 3733 50  0000 R CNN
F 2 "" H 9300 3850 50  0001 C CNN
F 3 "~" H 9300 3850 50  0001 C CNN
	1    9300 3850
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J8
U 1 1 61F63A65
P 9300 4850
F 0 "J8" H 9272 4824 50  0000 R CNN
F 1 "Arduino A" H 9272 4733 50  0000 R CNN
F 2 "" H 9300 4850 50  0001 C CNN
F 3 "~" H 9300 4850 50  0001 C CNN
	1    9300 4850
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x12_Female J4
U 1 1 61F6DB8F
P 4850 3650
F 0 "J4" H 5150 3650 50  0000 C CNN
F 1 "power-in" H 5150 3550 50  0000 C CNN
F 2 "" H 4850 3650 50  0001 C CNN
F 3 "~" H 4850 3650 50  0001 C CNN
	1    4850 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5050 3450 9100 3450
Wire Wire Line
	5050 3550 9100 3550
Wire Wire Line
	5050 3650 9100 3650
Wire Wire Line
	5050 3750 9100 3750
Wire Wire Line
	5050 3850 9100 3850
Wire Wire Line
	5050 3950 9100 3950
$Comp
L Connector:Conn_01x08_Male J9
U 1 1 61F8A02A
P 9300 5800
F 0 "J9" H 9272 5774 50  0000 R CNN
F 1 "Arduino power" H 9272 5683 50  0000 R CNN
F 2 "" H 9300 5800 50  0001 C CNN
F 3 "~" H 9300 5800 50  0001 C CNN
	1    9300 5800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9100 5600 9000 5600
Wire Wire Line
	9000 5600 9000 5700
Wire Wire Line
	9000 5700 9100 5700
NoConn ~ 5050 3150
Wire Wire Line
	5050 2550 9100 2550
Wire Wire Line
	5050 2450 9100 2450
Wire Wire Line
	5050 2250 7900 2250
Wire Wire Line
	5050 2350 9100 2350
Wire Wire Line
	7900 5800 9100 5800
Wire Wire Line
	9000 5600 8100 5600
Wire Wire Line
	8100 5600 8100 5400
Connection ~ 9000 5600
Wire Wire Line
	5050 2650 8100 2650
Wire Wire Line
	5050 4250 8100 4250
Connection ~ 8100 4250
Wire Wire Line
	5050 4050 8350 4050
Wire Wire Line
	8350 5150 9100 5150
Wire Wire Line
	5050 4150 8250 4150
Text Label 5250 4050 0    50   ~ 0
~FAULT
Text Label 5250 4150 0    50   ~ 0
CAO
Text Label 5250 3450 0    50   ~ 0
Hi1
Text Label 5250 3550 0    50   ~ 0
Hi2
Text Label 5250 3650 0    50   ~ 0
Hi3
Text Label 5400 3750 0    50   ~ 0
Lo1
Text Label 5400 3850 0    50   ~ 0
Lo2
Text Label 5400 3950 0    50   ~ 0
Lo3
Wire Wire Line
	7900 2250 7900 3250
Wire Wire Line
	5050 3250 7900 3250
Wire Wire Line
	5050 3350 8350 3350
Text Label 5400 3350 0    50   ~ 0
PWM
Text Label 5250 3250 0    50   ~ 0
+5V
Text Label 5400 4250 0    50   ~ 0
GND
Text Label 5050 3150 0    50   ~ 0
+12V
Text Label 5200 2250 0    50   ~ 0
+5V
Text Label 5200 2350 0    50   ~ 0
HOME
Text Label 5200 2450 0    50   ~ 0
STEP-A
Text Label 5200 2550 0    50   ~ 0
STEP-B
Text Label 5200 2650 0    50   ~ 0
GND
Text Label 8550 2350 0    50   ~ 0
D2=HOME
Text Label 8550 2450 0    50   ~ 0
D3=STEP-A
Text Label 8550 2550 0    50   ~ 0
D4=STEP-B
Text Label 8550 2650 0    50   ~ 0
D5=PWM
Text Label 8550 3450 0    50   ~ 0
B0=~Hi1
Text Label 8550 3550 0    50   ~ 0
B1=~Hi2
Text Label 8550 3650 0    50   ~ 0
B2=~Hi3
Text Label 8550 3750 0    50   ~ 0
B3=~Lo1
Text Label 8550 3850 0    50   ~ 0
B4=~Lo2
Text Label 8550 3950 0    50   ~ 0
B5=~Lo3
Wire Wire Line
	8350 3350 8350 2650
Connection ~ 7900 3250
Wire Wire Line
	7900 3250 7900 5300
Wire Wire Line
	8100 2650 8100 4250
Wire Wire Line
	8350 2650 9100 2650
Text Label 8550 5150 0    50   ~ 0
C0=~FAULT
Text Label 8550 5050 0    50   ~ 0
C1=CAO
NoConn ~ 9100 2150
NoConn ~ 9100 2250
NoConn ~ 9100 6200
NoConn ~ 9100 6100
NoConn ~ 9100 6000
NoConn ~ 9100 5900
NoConn ~ 9100 5500
Wire Wire Line
	8350 4050 8350 5150
$Comp
L Device:L_Core_Iron L1
U 1 1 6202AF71
P 2050 4250
F 0 "L1" H 2138 4250 50  0000 L CNN
F 1 "L_Core_Iron" H 2138 4205 50  0001 L CNN
F 2 "" H 2050 4250 50  0001 C CNN
F 3 "~" H 2050 4250 50  0001 C CNN
	1    2050 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Core_Iron L2
U 1 1 6202D14E
P 2300 4250
F 0 "L2" H 2388 4250 50  0000 L CNN
F 1 "L_Core_Iron" H 2388 4205 50  0001 L CNN
F 2 "" H 2300 4250 50  0001 C CNN
F 3 "~" H 2300 4250 50  0001 C CNN
	1    2300 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Core_Iron L3
U 1 1 6202D4C6
P 2550 4250
F 0 "L3" H 2638 4250 50  0000 L CNN
F 1 "L_Core_Iron" H 2638 4205 50  0001 L CNN
F 2 "" H 2550 4250 50  0001 C CNN
F 3 "~" H 2550 4250 50  0001 C CNN
	1    2550 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 6202F9BE
P 3400 3650
F 0 "J2" H 3428 3626 50  0000 L CNN
F 1 "power-out" H 3428 3535 50  0000 L CNN
F 2 "" H 3400 3650 50  0001 C CNN
F 3 "~" H 3400 3650 50  0001 C CNN
	1    3400 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3650 2050 3650
Wire Wire Line
	2050 3650 2050 4100
Wire Wire Line
	3200 3750 2300 3750
Wire Wire Line
	2300 3750 2300 4100
Wire Wire Line
	2550 3850 2550 4100
Wire Wire Line
	2550 3850 3200 3850
Wire Wire Line
	2050 4550 2050 4400
Wire Wire Line
	2300 4400 2300 4550
Connection ~ 2300 4550
Wire Wire Line
	2300 4550 2050 4550
Wire Wire Line
	2550 4400 2550 4550
Wire Wire Line
	2550 4550 2300 4550
Wire Wire Line
	2050 4550 1900 4550
Wire Wire Line
	1900 4550 1900 3550
Connection ~ 2050 4550
Wire Wire Line
	1900 3550 3200 3550
Wire Wire Line
	8250 5050 9100 5050
Wire Wire Line
	8250 4150 8250 5050
$Comp
L Connector:Conn_01x05_Female J5
U 1 1 61F548D9
P 4850 5500
F 0 "J5" H 5050 5550 50  0000 C CNN
F 1 "keypad" H 5150 5450 50  0000 C CNN
F 2 "" H 4850 5500 50  0001 C CNN
F 3 "~" H 4850 5500 50  0001 C CNN
	1    4850 5500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5050 5300 6900 5300
Connection ~ 7900 5300
Wire Wire Line
	7900 5300 7900 5800
Wire Wire Line
	5050 5400 6200 5400
Connection ~ 8100 5400
Wire Wire Line
	8100 5400 8100 4250
Wire Wire Line
	7600 4750 9100 4750
Wire Wire Line
	5050 5700 7600 5700
Wire Wire Line
	7600 4750 7600 4850
Wire Wire Line
	5050 5600 7500 5600
Wire Wire Line
	7500 5600 7500 4650
Wire Wire Line
	7500 4650 9100 4650
Wire Wire Line
	9100 4850 7700 4850
Wire Wire Line
	7700 4850 7700 5500
Wire Wire Line
	7700 5500 5050 5500
$Comp
L Device:R R2
U 1 1 61F62F0F
P 7200 4650
F 0 "R2" V 7100 4650 50  0000 C CNN
F 1 "10k" V 7200 4650 50  0000 C CNN
F 2 "" V 7130 4650 50  0001 C CNN
F 3 "~" H 7200 4650 50  0001 C CNN
	1    7200 4650
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 61F63EDF
P 7200 4850
F 0 "R3" V 7100 4850 50  0000 C CNN
F 1 "10k" V 7200 4850 50  0000 C CNN
F 2 "" V 7130 4850 50  0001 C CNN
F 3 "~" H 7200 4850 50  0001 C CNN
	1    7200 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 4650 7500 4650
Connection ~ 7500 4650
Wire Wire Line
	7350 4850 7600 4850
Connection ~ 7600 4850
Wire Wire Line
	7600 4850 7600 5700
Wire Wire Line
	7050 4650 6900 4650
Wire Wire Line
	6900 4650 6900 4850
Connection ~ 6900 5300
Wire Wire Line
	6900 5300 7900 5300
Wire Wire Line
	7050 4850 6900 4850
Connection ~ 6900 4850
Wire Wire Line
	6900 4850 6900 5300
Text Label 5250 5300 0    50   ~ 0
+5V
Text Label 5250 5400 0    50   ~ 0
GND
Text Label 5250 5500 0    50   ~ 0
STB
Text Label 5250 5600 0    50   ~ 0
CLK
Text Label 5250 5700 0    50   ~ 0
DIDO
Text Label 8550 4650 0    50   ~ 0
C5=SCL=CLK
Text Label 8550 4750 0    50   ~ 0
C4=SDA=DIO
Text Label 8550 4850 0    50   ~ 0
C3=STB
Wire Notes Line
	9250 2050 10750 2050
Wire Notes Line
	10750 2050 10750 6350
Wire Notes Line
	10750 6350 9250 6350
Wire Notes Line
	9250 6350 9250 2050
Text Notes 9750 2050 0    50   ~ 0
Arduino UNO
Wire Notes Line
	3400 2100 3400 2800
Wire Notes Line
	3400 2800 4850 2800
Wire Notes Line
	4850 2800 4850 2100
Wire Notes Line
	4850 2100 3400 2100
Text Notes 3850 2100 0    50   ~ 0
sensors board
Wire Notes Line
	4850 3050 3400 3050
Wire Notes Line
	3400 3050 3400 4350
Wire Notes Line
	3400 4350 4850 4350
Wire Notes Line
	4850 4350 4850 3050
Text Notes 3900 3050 0    50   ~ 0
power board
$Comp
L Device:CP C?
U 1 1 62112DDD
P 6550 5000
F 0 "C?" H 6668 5046 50  0000 L CNN
F 1 "CP" H 6668 4955 50  0000 L CNN
F 2 "" H 6588 4850 50  0001 C CNN
F 3 "~" H 6550 5000 50  0001 C CNN
	1    6550 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 62113A3F
P 6200 5000
F 0 "C?" H 6315 5046 50  0000 L CNN
F 1 "C" H 6315 4955 50  0000 L CNN
F 2 "" H 6238 4850 50  0001 C CNN
F 3 "~" H 6200 5000 50  0001 C CNN
	1    6200 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4650 6550 4650
Wire Wire Line
	6200 4650 6200 4850
Connection ~ 6900 4650
Wire Wire Line
	6550 4850 6550 4650
Connection ~ 6550 4650
Wire Wire Line
	6550 4650 6200 4650
Wire Wire Line
	6550 5150 6550 5400
Connection ~ 6550 5400
Wire Wire Line
	6550 5400 8100 5400
Wire Wire Line
	6200 5150 6200 5400
Connection ~ 6200 5400
Wire Wire Line
	6200 5400 6550 5400
Text Notes 2100 4700 0    50   ~ 0
BLDC motor
$EndSCHEMATC
