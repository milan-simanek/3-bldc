EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Řízení 3fáz motoru"
Date "2021-11-19"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:CP_Small C5
U 1 1 61715B48
P 6000 3450
F 0 "C5" H 6088 3496 50  0000 L CNN
F 1 "4μ7" H 6088 3405 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D4.5mm_P2.50mm" H 6000 3450 50  0001 C CNN
F 3 "~" H 6000 3450 50  0001 C CNN
	1    6000 3450
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BUZ11 T2
U 1 1 6171670B
P 6950 3500
F 0 "T2" H 7150 3500 50  0000 L CNN
F 1 "BUZ11" H 7100 3600 50  0000 L CNN
F 2 "moje:TO-220-3_Vertical" H 7200 3425 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Fairchild%20PDFs/BUZ11.pdf" H 6950 3500 50  0001 L CNN
	1    6950 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 617169DB
P 6600 3600
F 0 "R10" V 6500 3600 50  0000 C CNN
F 1 "18" V 6600 3600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6530 3600 50  0001 C CNN
F 3 "~" H 6600 3600 50  0001 C CNN
	1    6600 3600
	0    1    1    0   
$EndComp
$Comp
L misi_chips:IR2130 IO2
U 1 1 617248EC
P 5450 4200
F 0 "IO2" H 5650 5250 50  0000 C CNN
F 1 "IR2130" H 5700 5150 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_LongPads" H 5450 2900 50  0001 C CNN
F 3 "https://www.infineon.com/dgdl/Infineon-IR2130-DataSheet-v01_00-EN.pdf?fileId=5546d462533600a4015355c8757d169a" H 5450 4200 50  0001 C CNN
	1    5450 4200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BUZ11 T4
U 1 1 617314CC
P 7450 3900
F 0 "T4" H 7650 3900 50  0000 L CNN
F 1 "BUZ11" H 7600 4000 50  0000 L CNN
F 2 "moje:TO-220-3_Vertical" H 7700 3825 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Fairchild%20PDFs/BUZ11.pdf" H 7450 3900 50  0001 L CNN
	1    7450 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 617314D2
P 6600 4000
F 0 "R11" V 6500 4000 50  0000 C CNN
F 1 "18" V 6600 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6530 4000 50  0001 C CNN
F 3 "~" H 6600 4000 50  0001 C CNN
	1    6600 4000
	0    1    1    0   
$EndComp
$Comp
L Device:D_Small_ALT D2
U 1 1 61736CF4
P 6200 3350
F 0 "D2" H 6100 3450 50  0000 L CNN
F 1 "1N4937" H 6245 3420 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" V 6200 3350 50  0001 C CNN
F 3 "~" V 6200 3350 50  0001 C CNN
	1    6200 3350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BUZ11 T6
U 1 1 61736CFA
P 7950 4300
F 0 "T6" H 8150 4300 50  0000 L CNN
F 1 "BUZ11" H 8100 4400 50  0000 L CNN
F 2 "moje:TO-220-3_Vertical" H 8200 4225 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Fairchild%20PDFs/BUZ11.pdf" H 7950 4300 50  0001 L CNN
	1    7950 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 4000 7250 4000
Wire Wire Line
	6750 4400 7750 4400
Wire Wire Line
	5850 3600 6450 3600
Wire Wire Line
	5850 4000 6450 4000
Wire Wire Line
	7050 3700 6000 3700
Connection ~ 7050 3700
Wire Wire Line
	7550 4100 6000 4100
Connection ~ 7550 4100
Wire Wire Line
	8050 4500 6000 4500
Connection ~ 8050 4500
$Comp
L Transistor_FET:BUZ11 T3
U 1 1 6173A57E
P 6950 5050
F 0 "T3" H 7150 5050 50  0000 L CNN
F 1 "BUZ11" H 7100 5150 50  0000 L CNN
F 2 "moje:TO-220-3_Vertical" H 7200 4975 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Fairchild%20PDFs/BUZ11.pdf" H 6950 5050 50  0001 L CNN
	1    6950 5050
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BUZ11 T7
U 1 1 6173E6DF
P 7950 5650
F 0 "T7" H 8150 5650 50  0000 L CNN
F 1 "BUZ11" H 8100 5750 50  0000 L CNN
F 2 "moje:TO-220-3_Vertical" H 8200 5575 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Fairchild%20PDFs/BUZ11.pdf" H 7950 5650 50  0001 L CNN
	1    7950 5650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BUZ11 T5
U 1 1 6174075F
P 7450 5350
F 0 "T5" H 7650 5350 50  0000 L CNN
F 1 "BUZ11" H 7600 5450 50  0000 L CNN
F 2 "moje:TO-220-3_Vertical" H 7700 5275 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Fairchild%20PDFs/BUZ11.pdf" H 7450 5350 50  0001 L CNN
	1    7450 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3700 7050 4700
Wire Wire Line
	8050 4500 8050 4900
$Comp
L Device:R R13
U 1 1 6174664D
P 6600 5050
F 0 "R13" V 6500 5050 50  0000 C CNN
F 1 "18" V 6600 5050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6530 5050 50  0001 C CNN
F 3 "~" H 6600 5050 50  0001 C CNN
	1    6600 5050
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 61746E30
P 6600 5350
F 0 "R14" V 6500 5350 50  0000 C CNN
F 1 "18" V 6600 5350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6530 5350 50  0001 C CNN
F 3 "~" H 6600 5350 50  0001 C CNN
	1    6600 5350
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 617477DF
P 6600 5650
F 0 "R15" V 6500 5650 50  0000 C CNN
F 1 "18" V 6600 5650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6530 5650 50  0001 C CNN
F 3 "~" H 6600 5650 50  0001 C CNN
	1    6600 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 5350 7250 5350
Wire Wire Line
	6750 5650 7750 5650
Wire Wire Line
	5850 4700 6350 4700
Wire Wire Line
	6350 4700 6350 5050
Wire Wire Line
	6350 5050 6450 5050
Wire Wire Line
	5850 4800 6250 4800
Wire Wire Line
	6250 4800 6250 5350
Wire Wire Line
	6250 5350 6450 5350
Wire Wire Line
	5850 4900 6150 4900
Wire Wire Line
	6150 4900 6150 5650
Wire Wire Line
	6150 5650 6450 5650
Wire Wire Line
	7550 4100 7550 4800
Wire Wire Line
	7050 5250 7050 6200
Wire Wire Line
	7050 6200 7550 6200
Wire Wire Line
	8050 6200 8050 5850
Wire Wire Line
	7550 5550 7550 6200
Connection ~ 7550 6200
Wire Wire Line
	7550 6200 8050 6200
Wire Wire Line
	10000 4800 9700 4800
Connection ~ 7550 4800
Wire Wire Line
	7550 4800 7550 5150
Wire Wire Line
	10000 4900 9800 4900
Connection ~ 8050 4900
Wire Wire Line
	8050 4900 8050 5450
Wire Wire Line
	8550 4100 8550 4700
Wire Wire Line
	8750 4100 8750 4800
Wire Wire Line
	8950 4100 8950 4900
Connection ~ 8550 4700
Wire Wire Line
	8550 4700 8550 5500
Connection ~ 8750 4800
Wire Wire Line
	8750 4800 7550 4800
Wire Wire Line
	8750 4800 8750 5500
Connection ~ 8950 4900
Wire Wire Line
	8950 4900 8050 4900
Wire Wire Line
	8950 4900 8950 5500
$Comp
L Device:D_ALT D6
U 1 1 61795739
P 8550 5650
F 0 "D6" V 8400 5650 50  0000 L CNN
F 1 "1N4937" H 8450 5550 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8550 5650 50  0001 C CNN
F 3 "~" H 8550 5650 50  0001 C CNN
	1    8550 5650
	0    1    1    0   
$EndComp
$Comp
L Device:D_ALT D8
U 1 1 617A675C
P 8750 5650
F 0 "D8" V 8600 5650 50  0000 L CNN
F 1 "1N4937" H 8650 5550 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8750 5650 50  0001 C CNN
F 3 "~" H 8750 5650 50  0001 C CNN
	1    8750 5650
	0    1    1    0   
$EndComp
$Comp
L Device:D_ALT D10
U 1 1 617A6C24
P 8950 5650
F 0 "D10" V 8800 5650 50  0000 L CNN
F 1 "1N4937" H 8850 5550 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8950 5650 50  0001 C CNN
F 3 "~" H 8950 5650 50  0001 C CNN
	1    8950 5650
	0    1    1    0   
$EndComp
$Comp
L Device:D_ALT D5
U 1 1 617A709D
P 8550 3950
F 0 "D5" V 8400 3950 50  0000 L CNN
F 1 "1N4937" H 8450 3850 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8550 3950 50  0001 C CNN
F 3 "~" H 8550 3950 50  0001 C CNN
	1    8550 3950
	0    1    1    0   
$EndComp
$Comp
L Device:D_ALT D7
U 1 1 617A79C5
P 8750 3950
F 0 "D7" V 8600 3950 50  0000 L CNN
F 1 "1N4937" H 8650 3850 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8750 3950 50  0001 C CNN
F 3 "~" H 8750 3950 50  0001 C CNN
	1    8750 3950
	0    1    1    0   
$EndComp
$Comp
L Device:D_ALT D9
U 1 1 617A7ED6
P 8950 3950
F 0 "D9" V 8800 3950 50  0000 L CNN
F 1 "1N4937" H 8850 3850 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8950 3950 50  0001 C CNN
F 3 "~" H 8950 3950 50  0001 C CNN
	1    8950 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 6200 8550 6200
Wire Wire Line
	8950 6200 8950 5800
Connection ~ 8050 6200
Wire Wire Line
	8750 5800 8750 6200
Connection ~ 8750 6200
Wire Wire Line
	8750 6200 8950 6200
Wire Wire Line
	8550 5800 8550 6200
Connection ~ 8550 6200
Wire Wire Line
	8550 6200 8750 6200
Wire Wire Line
	7050 3300 7050 2650
Wire Wire Line
	7050 2650 7550 2650
Wire Wire Line
	8950 2650 8950 3800
Wire Wire Line
	8750 3800 8750 2650
Connection ~ 8750 2650
Wire Wire Line
	8750 2650 8950 2650
Wire Wire Line
	8550 3800 8550 2650
Connection ~ 8550 2650
Wire Wire Line
	8550 2650 8750 2650
Wire Wire Line
	7550 3700 7550 2650
Connection ~ 7550 2650
Wire Wire Line
	7550 2650 8050 2650
Wire Wire Line
	8050 4100 8050 2650
Connection ~ 8050 2650
Wire Wire Line
	8050 2650 8200 2650
Wire Wire Line
	8550 4700 7050 4700
Connection ~ 7050 4700
Wire Wire Line
	7050 4700 7050 4850
Wire Wire Line
	5850 4400 6450 4400
$Comp
L Device:R R12
U 1 1 61736F76
P 6600 4400
F 0 "R12" V 6500 4400 50  0000 C CNN
F 1 "18" V 6600 4400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6530 4400 50  0001 C CNN
F 3 "~" H 6600 4400 50  0001 C CNN
	1    6600 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 3600 6750 3500
Wire Wire Line
	7250 4000 7250 3900
Wire Wire Line
	7750 4400 7750 4300
$Comp
L Device:CP_Small C6
U 1 1 61845F14
P 6000 3850
F 0 "C6" H 6088 3896 50  0000 L CNN
F 1 "4μ7" H 6088 3805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D4.5mm_P2.50mm" H 6000 3850 50  0001 C CNN
F 3 "~" H 6000 3850 50  0001 C CNN
	1    6000 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small_ALT D3
U 1 1 618596B6
P 6200 3750
F 0 "D3" H 6100 3850 50  0000 L CNN
F 1 "1N4937" H 6245 3820 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" V 6200 3750 50  0001 C CNN
F 3 "~" V 6200 3750 50  0001 C CNN
	1    6200 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small_ALT D4
U 1 1 6185CCDC
P 6200 4150
F 0 "D4" H 6100 4250 50  0000 L CNN
F 1 "1N4937" H 6245 4220 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" V 6200 4150 50  0001 C CNN
F 3 "~" V 6200 4150 50  0001 C CNN
	1    6200 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C7
U 1 1 6185D23D
P 6000 4250
F 0 "C7" H 6088 4296 50  0000 L CNN
F 1 "4μ7" H 6088 4205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D4.5mm_P2.50mm" H 6000 4250 50  0001 C CNN
F 3 "~" H 6000 4250 50  0001 C CNN
	1    6000 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4300 5850 4150
Wire Wire Line
	5850 4150 6000 4150
Wire Wire Line
	6000 4150 6100 4150
Connection ~ 6000 4150
Wire Wire Line
	6300 4150 6300 3750
Connection ~ 6300 3750
Wire Wire Line
	6300 3750 6300 3350
Wire Wire Line
	6100 3350 6000 3350
Wire Wire Line
	5850 3350 5850 3500
Connection ~ 6000 3350
Wire Wire Line
	6000 3350 5850 3350
Wire Wire Line
	6100 3750 6000 3750
Wire Wire Line
	5850 3750 5850 3900
Connection ~ 6000 3750
Wire Wire Line
	6000 3750 5850 3750
Wire Wire Line
	6000 3550 6000 3700
Connection ~ 6000 3700
Wire Wire Line
	6000 3700 5850 3700
Wire Wire Line
	6000 3950 6000 4100
Connection ~ 6000 4100
Wire Wire Line
	6000 4100 5850 4100
Wire Wire Line
	6000 4350 6000 4500
Connection ~ 6000 4500
Wire Wire Line
	6000 4500 5850 4500
$Comp
L Device:R R9
U 1 1 6186D980
P 6300 3000
F 0 "R9" V 6200 3000 50  0000 C CNN
F 1 "100" V 6300 3000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6230 3000 50  0001 C CNN
F 3 "~" H 6300 3000 50  0001 C CNN
	1    6300 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 618827F8
P 9200 3950
F 0 "C9" H 9292 3996 50  0000 L CNN
F 1 "330n" H 9292 3905 50  0000 L CNN
F 2 "Pouzdra:C213_L16_W7.5_P12.5" H 9200 3950 50  0001 C CNN
F 3 "~" H 9200 3950 50  0001 C CNN
	1    9200 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR016
U 1 1 618948DF
P 5300 5100
F 0 "#PWR016" H 5300 4850 50  0001 C CNN
F 1 "GNDD" H 5304 4945 50  0001 C CNN
F 2 "" H 5300 5100 50  0001 C CNN
F 3 "" H 5300 5100 50  0001 C CNN
	1    5300 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 6189542C
P 4500 6200
F 0 "R6" V 4600 6200 50  0000 C CNN
F 1 "0.5Ω/5W" V 4400 6200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_Power_L25.0mm_W9.0mm_P30.48mm" V 4430 6200 50  0001 C CNN
F 3 "~" H 4500 6200 50  0001 C CNN
	1    4500 6200
	0    -1   -1   0   
$EndComp
Connection ~ 7050 6200
$Comp
L power:GNDD #PWR014
U 1 1 61898673
P 4150 6400
F 0 "#PWR014" H 4150 6150 50  0001 C CNN
F 1 "GNDD" H 4154 6245 50  0001 C CNN
F 2 "" H 4150 6400 50  0001 C CNN
F 3 "" H 4150 6400 50  0001 C CNN
	1    4150 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 6400 4150 6200
Wire Wire Line
	8200 1750 8200 1800
Connection ~ 8200 2650
Wire Wire Line
	8200 2650 8550 2650
Wire Wire Line
	8000 1750 8000 1800
Connection ~ 8200 1800
Wire Wire Line
	8200 1800 8200 2000
Connection ~ 8000 1800
Wire Wire Line
	8000 1800 8000 1850
Text Notes 7850 1150 0    98   ~ 0
12V DC
$Comp
L Device:CP C8
U 1 1 618ABDBB
P 8550 2200
F 0 "C8" H 8668 2246 50  0000 L CNN
F 1 "1000μ/16V" H 8668 2155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 8588 2050 50  0001 C CNN
F 3 "~" H 8550 2200 50  0001 C CNN
	1    8550 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR020
U 1 1 618ACDB8
P 8550 2350
F 0 "#PWR020" H 8550 2100 50  0001 C CNN
F 1 "GNDD" H 8554 2195 50  0001 C CNN
F 2 "" H 8550 2350 50  0001 C CNN
F 3 "" H 8550 2350 50  0001 C CNN
	1    8550 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 2050 8550 2000
Wire Wire Line
	8550 2000 8200 2000
Connection ~ 8200 2000
$Comp
L Device:R R8
U 1 1 618B33B1
P 4700 5900
F 0 "R8" V 4600 5900 50  0000 C CNN
F 1 "1k" V 4700 5900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4630 5900 50  0001 C CNN
F 3 "~" H 4700 5900 50  0001 C CNN
	1    4700 5900
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT P2
U 1 1 618C0F4B
P 4350 5900
F 0 "P2" V 4250 5950 50  0000 R CNN
F 1 "220" V 4350 5900 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-H5_Horizontal" H 4350 5900 50  0001 C CNN
F 3 "~" H 4350 5900 50  0001 C CNN
	1    4350 5900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 618F4097
P 3550 4750
F 0 "R2" V 3450 4750 50  0000 C CNN
F 1 "15k" V 3550 4750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3480 4750 50  0001 C CNN
F 3 "~" H 3550 4750 50  0001 C CNN
	1    3550 4750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 618F7B7B
P 3900 5400
F 0 "R4" V 3800 5400 50  0000 C CNN
F 1 "1k" V 3900 5400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3830 5400 50  0001 C CNN
F 3 "~" H 3900 5400 50  0001 C CNN
	1    3900 5400
	-1   0    0    1   
$EndComp
$Comp
L power:GNDD #PWR012
U 1 1 618F87A1
P 3900 5550
F 0 "#PWR012" H 3900 5300 50  0001 C CNN
F 1 "GNDD" H 3904 5395 50  0001 C CNN
F 2 "" H 3900 5550 50  0001 C CNN
F 3 "" H 3900 5550 50  0001 C CNN
	1    3900 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4600 4850 4600
Wire Wire Line
	3550 4600 3550 4500
Wire Wire Line
	5050 4300 4650 4300
Wire Wire Line
	5050 3700 4650 3700
Wire Wire Line
	5050 3600 4550 3600
Wire Wire Line
	4000 3500 4450 3500
Wire Wire Line
	2950 3500 2850 3500
$Comp
L Device:R R7
U 1 1 61A4C63C
P 4600 2450
F 0 "R7" V 4500 2450 50  0000 C CNN
F 1 "220" V 4600 2450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4530 2450 50  0001 C CNN
F 3 "~" H 4600 2450 50  0001 C CNN
	1    4600 2450
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_ALT D1
U 1 1 61A4DA14
P 4600 2150
F 0 "D1" V 4639 2032 50  0000 R CNN
F 1 "error" V 4548 2032 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 4600 2150 50  0001 C CNN
F 3 "~" H 4600 2150 50  0001 C CNN
	1    4600 2150
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDD #PWR010
U 1 1 61C0DEEE
P 2950 6400
F 0 "#PWR010" H 2950 6150 50  0001 C CNN
F 1 "GNDD" H 2954 6245 50  0001 C CNN
F 2 "" H 2950 6400 50  0001 C CNN
F 3 "" H 2950 6400 50  0001 C CNN
	1    2950 6400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 61C0F215
P 2950 5200
F 0 "#PWR09" H 2950 5050 50  0001 C CNN
F 1 "+5V" H 2965 5373 50  0000 C CNN
F 2 "" H 2950 5200 50  0001 C CNN
F 3 "" H 2950 5200 50  0001 C CNN
	1    2950 5200
	1    0    0    -1  
$EndComp
Connection ~ 5450 6200
$Comp
L 4xxx:4071 IO1
U 2 1 6195FCEC
P 3250 3600
F 0 "IO1" H 3250 3600 50  0000 C CNN
F 1 "CD4071" H 3550 3750 50  0001 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3250 3600 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4071bms-72bms-75bms.pdf" H 3250 3600 50  0001 C CNN
	2    3250 3600
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4071 IO1
U 1 1 61954D7D
P 3250 3200
F 0 "IO1" H 3250 3200 50  0000 C CNN
F 1 "CD4071" H 3550 3350 50  0001 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3250 3200 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4071bms-72bms-75bms.pdf" H 3250 3200 50  0001 C CNN
	1    3250 3200
	1    0    0    1   
$EndComp
$Comp
L 4xxx:4071 IO1
U 4 1 619566AA
P 3250 2800
F 0 "IO1" H 3250 2800 50  0000 C CNN
F 1 "CD4071" H 3250 3050 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3250 2800 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4071bms-72bms-75bms.pdf" H 3250 2800 50  0001 C CNN
	4    3250 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4200 4150 4200
$Comp
L Connector:Conn_01x12_Male J1
U 1 1 61A8221F
P 1450 3700
F 0 "J1" H 1200 3850 50  0000 C CNN
F 1 "control" H 1150 3700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 1450 3700 50  0001 C CNN
F 3 "~" H 1450 3700 50  0001 C CNN
	1    1450 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3700 2950 3700
Wire Wire Line
	1650 3600 2550 3600
Wire Wire Line
	2550 3600 2550 3300
Wire Wire Line
	2550 3300 2950 3300
Wire Wire Line
	1650 3500 2400 3500
Wire Wire Line
	2400 3500 2400 2900
Wire Wire Line
	2400 2900 2950 2900
Wire Wire Line
	2850 2700 2850 3100
Wire Wire Line
	2850 2700 2950 2700
Wire Wire Line
	2950 3100 2850 3100
Connection ~ 2850 3100
Wire Wire Line
	2850 3100 2850 3500
Wire Wire Line
	3550 3600 3550 3700
Wire Wire Line
	3750 3200 3550 3200
Wire Wire Line
	4000 2800 3550 2800
Wire Wire Line
	3750 3200 3750 3600
Wire Wire Line
	4000 2800 4000 3500
Wire Wire Line
	1650 3800 4750 3800
Wire Wire Line
	1650 3900 4850 3900
Wire Wire Line
	1650 4000 4950 4000
Wire Wire Line
	1650 4100 2400 4100
Wire Wire Line
	2400 4100 2400 4200
Wire Wire Line
	1650 4200 2250 4200
Wire Wire Line
	2250 4200 2250 4500
Wire Wire Line
	2250 4500 3550 4500
$Comp
L Device:R_POT P1
U 1 1 61B293EF
P 3550 5150
F 0 "P1" H 3480 5196 50  0000 R CNN
F 1 "680" H 3480 5105 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-H5_Horizontal" H 3550 5150 50  0001 C CNN
F 3 "~" H 3550 5150 50  0001 C CNN
	1    3550 5150
	1    0    0    -1  
$EndComp
Connection ~ 3550 4500
Wire Wire Line
	3550 4500 3900 4500
$Comp
L power:GNDD #PWR011
U 1 1 61B6451D
P 3550 5550
F 0 "#PWR011" H 3550 5300 50  0001 C CNN
F 1 "GNDD" H 3554 5395 50  0001 C CNN
F 2 "" H 3550 5550 50  0001 C CNN
F 3 "" H 3550 5550 50  0001 C CNN
	1    3550 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 5550 3550 5300
Wire Wire Line
	3550 5000 3550 4900
$Comp
L Device:R R3
U 1 1 61BA07A6
P 3900 4750
F 0 "R3" V 3800 4750 50  0000 C CNN
F 1 "100k" V 3900 4750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3830 4750 50  0001 C CNN
F 3 "~" H 3900 4750 50  0001 C CNN
	1    3900 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	3700 5150 3900 5150
Wire Wire Line
	3900 5150 3900 4900
Connection ~ 3900 5150
Wire Wire Line
	3900 4600 3900 4500
Connection ~ 3900 4500
Wire Wire Line
	3900 4500 4750 4500
Wire Wire Line
	3900 5150 4050 5150
Wire Wire Line
	4050 4600 4050 5150
Wire Wire Line
	3900 5250 3900 5150
Wire Wire Line
	1650 3400 2250 3400
$Comp
L Device:R R5
U 1 1 61C25189
P 4150 1500
F 0 "R5" V 4050 1500 50  0000 C CNN
F 1 "10k" V 4150 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4080 1500 50  0001 C CNN
F 3 "~" H 4150 1500 50  0001 C CNN
	1    4150 1500
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 61C25CF9
P 4150 1250
F 0 "#PWR013" H 4150 1100 50  0001 C CNN
F 1 "+5V" H 4165 1423 50  0000 C CNN
F 2 "" H 4150 1250 50  0001 C CNN
F 3 "" H 4150 1250 50  0001 C CNN
	1    4150 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1350 4150 1300
Wire Wire Line
	4150 1650 4150 1800
Connection ~ 4150 4200
Wire Wire Line
	4150 4200 4550 4200
$Comp
L Transistor_FET:BSS83P T1
U 1 1 61C38B23
P 4500 1800
F 0 "T1" H 4704 1846 50  0000 L CNN
F 1 "BSS83P" H 4704 1755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4700 1725 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1835997.pdf" H 4500 1800 50  0001 L CNN
	1    4500 1800
	1    0    0    1   
$EndComp
Wire Wire Line
	4500 5900 4550 5900
Wire Wire Line
	4350 4300 4350 5750
Wire Wire Line
	4150 6200 4350 6200
Wire Wire Line
	4150 6200 4150 5900
Wire Wire Line
	4150 5900 4200 5900
Connection ~ 4150 6200
Wire Wire Line
	4150 1800 4300 1800
Connection ~ 4150 1800
Wire Wire Line
	4150 1800 4150 4200
Wire Wire Line
	4150 1300 4600 1300
Wire Wire Line
	4600 1300 4600 1600
Connection ~ 4150 1300
Wire Wire Line
	4150 1300 4150 1250
$Comp
L power:GNDD #PWR015
U 1 1 61E5BF56
P 4600 2600
F 0 "#PWR015" H 4600 2350 50  0001 C CNN
F 1 "GNDD" H 4604 2445 50  0001 C CNN
F 2 "" H 4600 2600 50  0001 C CNN
F 3 "" H 4600 2600 50  0001 C CNN
	1    4600 2600
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4071 IO1
U 3 1 61E8339D
P 2550 2400
F 0 "IO1" H 2550 2400 50  0000 C CNN
F 1 "CD4071" H 2600 2650 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 2550 2400 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4071bms-72bms-75bms.pdf" H 2550 2400 50  0001 C CNN
	3    2550 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2500 2250 3400
Wire Wire Line
	2850 2400 2850 2700
Connection ~ 2850 2700
$Comp
L power:GNDD #PWR04
U 1 1 61F1B6A1
P 1850 4500
F 0 "#PWR04" H 1850 4250 50  0001 C CNN
F 1 "GNDD" H 1854 4345 50  0001 C CNN
F 2 "" H 1850 4500 50  0001 C CNN
F 3 "" H 1850 4500 50  0001 C CNN
	1    1850 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3100 1650 3200
$Comp
L power:+5V #PWR03
U 1 1 61F4AA4E
P 1850 3100
F 0 "#PWR03" H 1850 2950 50  0001 C CNN
F 1 "+5V" H 1865 3273 50  0000 C CNN
F 2 "" H 1850 3100 50  0001 C CNN
F 3 "" H 1850 3100 50  0001 C CNN
	1    1850 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3300 1850 3300
Wire Wire Line
	1850 3100 1850 3300
$Comp
L Device:CP C3
U 1 1 61FFB142
P 2400 5900
F 0 "C3" H 2518 5946 50  0000 L CNN
F 1 "22μ" H 2518 5855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Axial_L18.0mm_D6.5mm_P25.00mm_Horizontal" H 2438 5750 50  0001 C CNN
F 3 "~" H 2400 5900 50  0001 C CNN
	1    2400 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 6200315C
P 2000 5900
F 0 "C2" H 2092 5946 50  0000 L CNN
F 1 "330n" H 2092 5855 50  0000 L CNN
F 2 "Pouzdra:C213_L16_W7.5_P12.5" H 2000 5900 50  0001 C CNN
F 3 "~" H 2000 5900 50  0001 C CNN
	1    2000 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR07
U 1 1 62003162
P 2000 6400
F 0 "#PWR07" H 2000 6150 50  0001 C CNN
F 1 "GNDD" H 2004 6245 50  0001 C CNN
F 2 "" H 2000 6400 50  0001 C CNN
F 3 "" H 2000 6400 50  0001 C CNN
	1    2000 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 6200 4900 6200
Wire Wire Line
	2000 5400 2400 5400
Wire Wire Line
	2000 5400 2000 5800
Wire Wire Line
	2400 5750 2400 5400
Connection ~ 2400 5400
$Comp
L power:GNDD #PWR08
U 1 1 620C5845
P 2400 6400
F 0 "#PWR08" H 2400 6150 50  0001 C CNN
F 1 "GNDD" H 2404 6245 50  0001 C CNN
F 2 "" H 2400 6400 50  0001 C CNN
F 3 "" H 2400 6400 50  0001 C CNN
	1    2400 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6050 2400 6400
Wire Wire Line
	2000 6000 2000 6400
$Comp
L Connector:Conn_01x04_Male J6
U 1 1 620ED27F
P 10200 4700
F 0 "J6" H 10172 4674 50  0000 R CNN
F 1 "motor" H 10172 4583 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 10200 4700 50  0001 C CNN
F 3 "~" H 10200 4700 50  0001 C CNN
	1    10200 4700
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J7
U 1 1 621C32ED
P 10200 5400
F 0 "J7" H 10172 5374 50  0000 R CNN
F 1 "msensor" H 10172 5283 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 10200 5400 50  0001 C CNN
F 3 "~" H 10200 5400 50  0001 C CNN
	1    10200 5400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10000 5300 9900 5300
Wire Wire Line
	9900 5300 9900 4600
Wire Wire Line
	9900 4600 10000 4600
Wire Wire Line
	10000 5600 9800 5600
Wire Wire Line
	9800 5600 9800 4900
Connection ~ 9800 4900
Wire Wire Line
	10000 5500 9700 5500
Wire Wire Line
	9700 5500 9700 4800
Connection ~ 9700 4800
Wire Wire Line
	10000 5400 9600 5400
Wire Wire Line
	9600 5400 9600 4700
Connection ~ 9600 4700
Wire Wire Line
	9600 4700 10000 4700
Wire Wire Line
	8200 2000 8200 2650
Wire Wire Line
	6300 3350 6300 3150
Connection ~ 6300 3350
Wire Wire Line
	6300 2850 6300 2650
Wire Wire Line
	6300 2650 7050 2650
Connection ~ 7050 2650
Connection ~ 6300 2650
Wire Wire Line
	5450 2650 5450 3300
$Comp
L power:+12V #PWR019
U 1 1 6230CAFB
P 8550 1900
F 0 "#PWR019" H 8550 1750 50  0001 C CNN
F 1 "+12V" H 8565 2073 50  0000 C CNN
F 2 "" H 8550 1900 50  0001 C CNN
F 3 "" H 8550 1900 50  0001 C CNN
	1    8550 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR01
U 1 1 62310C03
P 1650 3100
F 0 "#PWR01" H 1650 2950 50  0001 C CNN
F 1 "+12V" H 1665 3273 50  0000 C CNN
F 2 "" H 1650 3100 50  0001 C CNN
F 3 "" H 1650 3100 50  0001 C CNN
	1    1650 3100
	1    0    0    -1  
$EndComp
Connection ~ 8550 2000
Wire Wire Line
	8550 2000 8550 1900
$Comp
L Device:C_Small C4
U 1 1 62345C31
P 5650 2750
F 0 "C4" H 5742 2796 50  0000 L CNN
F 1 "330n" H 5742 2705 50  0000 L CNN
F 2 "Pouzdra:C213_L16_W7.5_P12.5" H 5650 2750 50  0001 C CNN
F 3 "~" H 5650 2750 50  0001 C CNN
	1    5650 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR017
U 1 1 62345C37
P 5650 2850
F 0 "#PWR017" H 5650 2600 50  0001 C CNN
F 1 "GNDD" H 5654 2695 50  0001 C CNN
F 2 "" H 5650 2850 50  0001 C CNN
F 3 "" H 5650 2850 50  0001 C CNN
	1    5650 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J2
U 1 1 6236018A
P 4650 3200
F 0 "J2" V 4450 3150 50  0000 R CNN
F 1 "test" V 4550 3200 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 4650 3200 50  0001 C CNN
F 3 "~" H 4650 3200 50  0001 C CNN
	1    4650 3200
	0    -1   1    0   
$EndComp
Wire Wire Line
	4450 3400 4450 3500
Connection ~ 4450 3500
Wire Wire Line
	4450 3500 5050 3500
Wire Wire Line
	4550 3400 4550 3600
Connection ~ 4550 3600
Wire Wire Line
	4550 3600 3750 3600
Wire Wire Line
	4650 3400 4650 3700
Connection ~ 4650 3700
Wire Wire Line
	4650 3700 3550 3700
Wire Wire Line
	4750 3400 4750 3800
Connection ~ 4750 3800
Wire Wire Line
	4750 3800 5050 3800
Wire Wire Line
	4850 3400 4850 3900
Connection ~ 4850 3900
Wire Wire Line
	4850 3900 5050 3900
Wire Wire Line
	4950 3400 4950 4000
Connection ~ 4950 4000
Wire Wire Line
	4950 4000 5050 4000
Wire Wire Line
	1650 4300 1850 4300
Wire Wire Line
	1850 4300 1850 4500
$Comp
L Connector:Conn_01x05_Male J3
U 1 1 62549136
P 4750 5300
F 0 "J3" V 4550 5350 50  0000 R CNN
F 1 "test" V 4650 5400 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 4750 5300 50  0001 C CNN
F 3 "~" H 4750 5300 50  0001 C CNN
	1    4750 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4950 5100 5300 5100
Connection ~ 5300 5100
Wire Wire Line
	4850 5100 4850 4600
Connection ~ 4850 4600
Wire Wire Line
	4850 4600 5050 4600
Wire Wire Line
	4750 5100 4750 4500
Connection ~ 4750 4500
Wire Wire Line
	4750 4500 5050 4500
Wire Wire Line
	4650 5100 4650 4300
Connection ~ 4650 4300
Wire Wire Line
	4650 4300 4350 4300
Wire Wire Line
	4550 5100 4550 4200
Connection ~ 4550 4200
Wire Wire Line
	4550 4200 5050 4200
Wire Wire Line
	5450 5100 5450 6200
Wire Wire Line
	4850 5900 4900 5900
Wire Wire Line
	4900 5900 4900 6200
Connection ~ 4900 6200
Wire Wire Line
	4900 6200 5450 6200
Wire Wire Line
	1950 1700 1950 1800
$Comp
L power:+5V #PWR05
U 1 1 61EED388
P 1950 1700
F 0 "#PWR05" H 1950 1550 50  0001 C CNN
F 1 "+5V" H 1965 1873 50  0000 C CNN
F 2 "" H 1950 1700 50  0001 C CNN
F 3 "" H 1950 1700 50  0001 C CNN
	1    1950 1700
	1    0    0    -1  
$EndComp
Connection ~ 1950 2300
Wire Wire Line
	1950 2200 1950 2300
Wire Wire Line
	1950 2300 1950 2350
Wire Wire Line
	2250 2300 1950 2300
$Comp
L power:GNDD #PWR06
U 1 1 61ED076E
P 1950 2650
F 0 "#PWR06" H 1950 2400 50  0001 C CNN
F 1 "GNDD" H 1954 2495 50  0001 C CNN
F 2 "" H 1950 2650 50  0001 C CNN
F 3 "" H 1950 2650 50  0001 C CNN
	1    1950 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 61ED0768
P 1950 2500
F 0 "R1" H 1850 2500 50  0000 C CNN
F 1 "15k" V 1950 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1880 2500 50  0001 C CNN
F 3 "~" H 1950 2500 50  0001 C CNN
	1    1950 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 6271783C
P 1800 2500
F 0 "C1" H 1892 2546 50  0000 L CNN
F 1 "15n" H 1892 2455 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 1800 2500 50  0001 C CNN
F 3 "~" H 1800 2500 50  0001 C CNN
	1    1800 2500
	-1   0    0    -1  
$EndComp
Connection ~ 5650 2650
Wire Wire Line
	5650 2650 5450 2650
Wire Wire Line
	1800 2400 1800 2300
Wire Wire Line
	1800 2300 1950 2300
$Comp
L power:GNDD #PWR02
U 1 1 627481FD
P 1800 2650
F 0 "#PWR02" H 1800 2400 50  0001 C CNN
F 1 "GNDD" H 1804 2495 50  0001 C CNN
F 2 "" H 1800 2650 50  0001 C CNN
F 3 "" H 1800 2650 50  0001 C CNN
	1    1800 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2600 1800 2650
Wire Wire Line
	2400 5400 2950 5400
Wire Wire Line
	2950 5200 2950 5400
$Comp
L 4xxx:4071 IO1
U 5 1 6277345D
P 2950 5900
F 0 "IO1" H 3100 6250 50  0000 C CNN
F 1 "CD4071" H 2950 5900 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 2950 5900 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4071bms-72bms-75bms.pdf" H 2950 5900 50  0001 C CNN
	5    2950 5900
	1    0    0    -1  
$EndComp
Connection ~ 2950 5400
$Comp
L power:PWR_FLAG #FLG03
U 1 1 618A7C55
P 8200 1800
F 0 "#FLG03" H 8200 1875 50  0001 C CNN
F 1 "PWR_FLAG" V 8200 1928 50  0001 L CNN
F 2 "" H 8200 1800 50  0001 C CNN
F 3 "~" H 8200 1800 50  0001 C CNN
	1    8200 1800
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 618A922E
P 8000 1800
F 0 "#FLG02" H 8000 1875 50  0001 C CNN
F 1 "PWR_FLAG" V 8000 1928 50  0001 L CNN
F 2 "" H 8000 1800 50  0001 C CNN
F 3 "~" H 8000 1800 50  0001 C CNN
	1    8000 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 629E3CAE
P 1850 3300
F 0 "#FLG01" H 1850 3375 50  0001 C CNN
F 1 "PWR_FLAG" V 1850 3428 50  0001 L CNN
F 2 "" H 1850 3300 50  0001 C CNN
F 3 "~" H 1850 3300 50  0001 C CNN
	1    1850 3300
	0    1    1    0   
$EndComp
Connection ~ 1850 3300
$Comp
L Connector:Barrel_Jack_Switch J4
U 1 1 62A93507
P 8100 1450
F 0 "J4" V 8111 1630 50  0000 L CNN
F 1 "power" V 8202 1630 50  0000 L CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 8150 1410 50  0001 C CNN
F 3 "~" H 8150 1410 50  0001 C CNN
	1    8100 1450
	0    1    1    0   
$EndComp
NoConn ~ 8100 1750
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 61A58980
P 9450 2100
F 0 "J5" H 9422 1982 50  0000 R CNN
F 1 "power12" H 9422 2073 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9450 2100 50  0001 C CNN
F 3 "~" H 9450 2100 50  0001 C CNN
	1    9450 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	8550 2000 9250 2000
Wire Wire Line
	9200 2350 9200 2100
Wire Wire Line
	9200 2100 9250 2100
$Comp
L power:GNDD #PWR021
U 1 1 61A69549
P 9200 2350
F 0 "#PWR021" H 9200 2100 50  0001 C CNN
F 1 "GNDD" H 9204 2195 50  0001 C CNN
F 2 "" H 9200 2350 50  0001 C CNN
F 3 "" H 9200 2350 50  0001 C CNN
	1    9200 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR018
U 1 1 618A45A2
P 8000 1850
F 0 "#PWR018" H 8000 1600 50  0001 C CNN
F 1 "GNDD" H 8004 1695 50  0001 C CNN
F 2 "" H 8000 1850 50  0001 C CNN
F 3 "" H 8000 1850 50  0001 C CNN
	1    8000 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 6200 7050 6200
Text Label 5800 6200 0    50   ~ 0
GNDPWR
Text Label 2000 2300 0    50   ~ 0
stop
Text Label 2850 4200 0    50   ~ 0
~FAULT
Text Label 2850 4500 0    50   ~ 0
CAO
Text Label 9400 4700 0    50   ~ 0
L1
Text Label 9400 4800 0    50   ~ 0
L2
Text Label 9400 4900 0    50   ~ 0
L3
Wire Wire Line
	8550 4700 9600 4700
Wire Wire Line
	8750 4800 9700 4800
Wire Wire Line
	8950 4900 9800 4900
Wire Wire Line
	5650 2650 6300 2650
Wire Wire Line
	8950 2650 9200 2650
Wire Wire Line
	9200 2650 9200 3850
Connection ~ 8950 2650
Wire Wire Line
	9200 6200 8950 6200
Connection ~ 8950 6200
Wire Wire Line
	9200 4050 9200 6200
$Comp
L mysymbols:tlacitko_paralelne TL1
U 1 1 619B49A9
P 1950 2000
F 0 "TL1" V 1996 1952 50  0000 R CNN
F 1 "STOP" V 1905 1952 50  0000 R CNN
F 2 "moje:Tlacitko_hranate" H 1950 2200 50  0001 C CNN
F 3 "~" H 1950 2200 50  0001 C CNN
	1    1950 2000
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
