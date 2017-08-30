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
LIBS:bma253
LIBS:si1133
LIBS:buzzer
LIBS:mdbt42v
LIBS:Sunee-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 775  625  0    60   Input ~ 0
SCL
Text HLabel 550  750  2    60   BiDi ~ 0
SDA
Text HLabel 550  875  2    60   Input ~ 0
SENS_ON
$Comp
L SI1133 UV1
U 1 1 59A570CD
P 5950 1625
F 0 "UV1" H 6075 2175 60  0000 C CNN
F 1 "SI1133" H 6150 1350 60  0000 C CNN
F 2 "" H 5950 1625 60  0000 C CNN
F 3 "" H 5950 1625 60  0000 C CNN
	1    5950 1625
	1    0    0    -1  
$EndComp
Text Label 5400 825  0    60   ~ 0
SENS_VCC
$Comp
L R R1
U 1 1 59A573B7
P 4850 1075
F 0 "R1" V 4930 1075 50  0000 C CNN
F 1 "5K" V 4850 1075 50  0000 C CNN
F 2 "" V 4780 1075 50  0001 C CNN
F 3 "" H 4850 1075 50  0001 C CNN
	1    4850 1075
	1    0    0    -1  
$EndComp
Text HLabel 4600 1325 0    60   BiDi ~ 0
SDA
$Comp
L R R2
U 1 1 59A58361
P 5050 1075
F 0 "R2" V 5130 1075 50  0000 C CNN
F 1 "5K" V 5050 1075 50  0000 C CNN
F 2 "" V 4980 1075 50  0001 C CNN
F 3 "" H 5050 1075 50  0001 C CNN
	1    5050 1075
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 59A58440
P 5050 1075
F 0 "R3" V 5130 1075 50  0000 C CNN
F 1 "5K" V 5050 1075 50  0000 C CNN
F 2 "" V 4980 1075 50  0001 C CNN
F 3 "" H 5050 1075 50  0001 C CNN
	1    5050 1075
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 59A5854C
P 5250 1075
F 0 "R4" V 5330 1075 50  0000 C CNN
F 1 "5K" V 5250 1075 50  0000 C CNN
F 2 "" V 5180 1075 50  0001 C CNN
F 3 "" H 5250 1075 50  0001 C CNN
	1    5250 1075
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 59A58552
P 5250 1075
F 0 "R5" V 5330 1075 50  0000 C CNN
F 1 "5K" V 5250 1075 50  0000 C CNN
F 2 "" V 5180 1075 50  0001 C CNN
F 3 "" H 5250 1075 50  0001 C CNN
	1    5250 1075
	1    0    0    -1  
$EndComp
Text HLabel 4600 1425 0    60   Input ~ 0
SCL
$Comp
L C C1
U 1 1 59A58AFA
P 5400 1975
F 0 "C1" H 5425 2075 50  0000 L CNN
F 1 "0.1uF" H 5425 1875 50  0000 L CNN
F 2 "" H 5438 1825 50  0001 C CNN
F 3 "" H 5400 1975 50  0001 C CNN
	1    5400 1975
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR4
U 1 1 59A58BD9
P 5400 2125
F 0 "#PWR4" H 5400 1875 50  0001 C CNN
F 1 "GND" H 5400 1975 50  0000 C CNN
F 2 "" H 5400 2125 50  0001 C CNN
F 3 "" H 5400 2125 50  0001 C CNN
	1    5400 2125
	1    0    0    -1  
$EndComp
Text HLabel 4575 1625 0    60   Input ~ 0
INT_UV
Text Label 6125 850  0    60   ~ 0
SENS_VCC
$Comp
L GND #PWR5
U 1 1 59A5938C
P 6250 1425
F 0 "#PWR5" H 6250 1175 50  0001 C CNN
F 1 "GND" H 6250 1275 50  0000 C CNN
F 2 "" H 6250 1425 50  0001 C CNN
F 3 "" H 6250 1425 50  0001 C CNN
	1    6250 1425
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 59A5946B
P 5950 850
F 0 "R6" V 6030 850 50  0000 C CNN
F 1 "10K" V 5950 850 50  0000 C CNN
F 2 "" V 5880 850 50  0001 C CNN
F 3 "" H 5950 850 50  0001 C CNN
	1    5950 850 
	0    1    1    0   
$EndComp
$Comp
L BMA253 ACC1
U 1 1 59A5A90C
P 8500 1575
F 0 "ACC1" H 8800 1925 60  0000 C CNN
F 1 "BMA253" H 8850 1200 60  0000 C CNN
F 2 "" H 8375 1425 60  0000 C CNN
F 3 "" H 8375 1425 60  0000 C CNN
	1    8500 1575
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR6
U 1 1 59A5AC66
P 7825 1475
F 0 "#PWR6" H 7825 1225 50  0001 C CNN
F 1 "GND" H 7825 1325 50  0000 C CNN
F 2 "" H 7825 1475 50  0001 C CNN
F 3 "" H 7825 1475 50  0001 C CNN
	1    7825 1475
	0    1    1    0   
$EndComp
Text HLabel 7600 1550 0    60   BiDi ~ 0
SDA
Text Label 8025 725  0    60   ~ 0
SENS_VCC
$Comp
L C C3
U 1 1 59A5B737
P 8025 1850
F 0 "C3" H 8050 1950 50  0000 L CNN
F 1 "100nF" H 8050 1750 50  0000 L CNN
F 2 "" H 8063 1700 50  0001 C CNN
F 3 "" H 8025 1850 50  0001 C CNN
	1    8025 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR7
U 1 1 59A5B7A2
P 8025 2025
F 0 "#PWR7" H 8025 1775 50  0001 C CNN
F 1 "GND" H 8025 1875 50  0000 C CNN
F 2 "" H 8025 2025 50  0001 C CNN
F 3 "" H 8025 2025 50  0001 C CNN
	1    8025 2025
	1    0    0    -1  
$EndComp
Text HLabel 8450 1000 1    60   Input ~ 0
SCL
$Comp
L R R9
U 1 1 59A5C5DC
P 7900 1225
F 0 "R9" V 7980 1225 50  0000 C CNN
F 1 "R" V 7900 1225 50  0000 C CNN
F 2 "" V 7830 1225 50  0001 C CNN
F 3 "" H 7900 1225 50  0001 C CNN
	1    7900 1225
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 59A5CC90
P 8250 1025
F 0 "R10" V 8330 1025 50  0000 C CNN
F 1 "R" V 8250 1025 50  0000 C CNN
F 2 "" V 8180 1025 50  0001 C CNN
F 3 "" H 8250 1025 50  0001 C CNN
	1    8250 1025
	0    1    1    0   
$EndComp
$Comp
L GND #PWR8
U 1 1 59A5D139
P 9250 2525
F 0 "#PWR8" H 9250 2275 50  0001 C CNN
F 1 "GND" H 9250 2375 50  0000 C CNN
F 2 "" H 9250 2525 50  0001 C CNN
F 3 "" H 9250 2525 50  0001 C CNN
	1    9250 2525
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 59A5D521
P 9100 1800
F 0 "C4" H 9125 1900 50  0000 L CNN
F 1 "100nF" H 9125 1700 50  0000 L CNN
F 2 "" H 9138 1650 50  0001 C CNN
F 3 "" H 9100 1800 50  0001 C CNN
	1    9100 1800
	1    0    0    -1  
$EndComp
Text Label 9100 725  0    60   ~ 0
SENS_VCC
Text HLabel 8525 1925 3    60   Input ~ 0
INT_ACC1
Text HLabel 8600 1925 3    60   Input ~ 0
INT_ACC2
$Comp
L C C2
U 1 1 59A6BF87
P 3550 1325
F 0 "C2" H 3575 1425 50  0000 L CNN
F 1 "0.1uF" H 3575 1225 50  0000 L CNN
F 2 "" H 3588 1175 50  0001 C CNN
F 3 "" H 3550 1325 50  0001 C CNN
	1    3550 1325
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 59A6CC3E
P 3550 1475
F 0 "#PWR3" H 3550 1225 50  0001 C CNN
F 1 "GND" H 3550 1325 50  0000 C CNN
F 2 "" H 3550 1475 50  0001 C CNN
F 3 "" H 3550 1475 50  0001 C CNN
	1    3550 1475
	1    0    0    -1  
$EndComp
Text Label 3550 1025 0    60   ~ 0
SENS_VCC
$Comp
L Q_NMOS_DGS Q1
U 1 1 59A6DA5F
P 2025 1325
F 0 "Q1" H 2225 1375 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 2225 1275 50  0000 L CNN
F 2 "" H 2225 1425 50  0001 C CNN
F 3 "" H 2025 1325 50  0001 C CNN
	1    2025 1325
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 59A6DBFA
P 1600 1325
F 0 "R7" V 1680 1325 50  0000 C CNN
F 1 "330R" V 1600 1325 50  0000 C CNN
F 2 "" V 1530 1325 50  0001 C CNN
F 3 "" H 1600 1325 50  0001 C CNN
	1    1600 1325
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 59A6DCBD
P 1850 1575
F 0 "R8" V 1930 1575 50  0000 C CNN
F 1 "10K" V 1850 1575 50  0000 C CNN
F 2 "" V 1780 1575 50  0001 C CNN
F 3 "" H 1850 1575 50  0001 C CNN
	1    1850 1575
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR2
U 1 1 59A6DDA3
P 2125 1775
F 0 "#PWR2" H 2125 1525 50  0001 C CNN
F 1 "GND" H 2125 1625 50  0000 C CNN
F 2 "" H 2125 1775 50  0001 C CNN
F 3 "" H 2125 1775 50  0001 C CNN
	1    2125 1775
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1325 5550 1325
Wire Wire Line
	4850 1325 4850 1225
Connection ~ 4850 1325
Wire Wire Line
	5050 1225 5050 1425
Wire Wire Line
	4600 1425 5525 1425
Connection ~ 5050 1425
Wire Wire Line
	5400 825  5400 1825
Wire Wire Line
	4575 1625 5525 1625
Wire Wire Line
	5550 1525 5400 1525
Connection ~ 5400 1525
Wire Wire Line
	5250 1225 5250 1625
Connection ~ 5250 1625
Wire Wire Line
	4850 925  5400 925 
Connection ~ 5050 925 
Connection ~ 5400 925 
Connection ~ 5250 925 
Wire Wire Line
	6200 1325 6475 1325
Wire Wire Line
	6050 850  6125 850 
Wire Wire Line
	6200 1425 6250 1425
Wire Wire Line
	5800 850  5800 1150
Wire Wire Line
	6475 1625 6200 1625
Wire Wire Line
	6200 1525 6475 1525
Connection ~ 5800 1050
Wire Wire Line
	7600 1550 8125 1550
Wire Wire Line
	8025 2000 8025 2025
Wire Wire Line
	8025 725  8025 1700
Wire Wire Line
	8025 1625 8125 1625
Connection ~ 8025 1625
Wire Wire Line
	7825 1475 8125 1475
Wire Wire Line
	8450 1000 8450 1200
Wire Wire Line
	8525 1150 8525 1225
Wire Wire Line
	8525 1150 8025 1150
Connection ~ 8025 1150
Wire Wire Line
	7900 1375 7900 1550
Connection ~ 7900 1550
Wire Wire Line
	7900 1075 7900 1025
Wire Wire Line
	7900 1025 8100 1025
Connection ~ 8025 1025
Wire Wire Line
	8400 1025 8450 1025
Connection ~ 8450 1025
Wire Wire Line
	8900 1500 9250 1500
Wire Wire Line
	9250 1500 9250 2525
Wire Wire Line
	8900 1575 9250 1575
Connection ~ 9250 1575
Wire Wire Line
	8900 1650 9100 1650
Wire Wire Line
	9100 1650 9100 725 
Wire Wire Line
	8450 1925 8450 2525
Connection ~ 9100 1650
Wire Wire Line
	8450 2525 9250 2525
Connection ~ 9100 2525
Wire Wire Line
	9100 1950 9100 2525
Wire Wire Line
	3550 1175 3550 1025
Wire Wire Line
	2125 1525 2125 1775
Wire Wire Line
	1825 1325 1750 1325
Wire Wire Line
	2125 900  2125 1125
Text Label 2375 1125 0    60   ~ 0
SENS_VCC
Wire Wire Line
	2125 1125 2375 1125
Connection ~ 2125 1125
Text HLabel 1350 1325 0    60   Input ~ 0
SENS_ON
Wire Wire Line
	1450 1325 1350 1325
$Comp
L VCC #PWR1
U 1 1 59A6EF84
P 2125 900
F 0 "#PWR1" H 2125 750 50  0001 C CNN
F 1 "VCC" H 2125 1050 50  0000 C CNN
F 2 "" H 2125 900 50  0001 C CNN
F 3 "" H 2125 900 50  0001 C CNN
	1    2125 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1325 1850 1425
Wire Wire Line
	2125 1725 1850 1725
Connection ~ 2125 1725
Connection ~ 1850 1325
$EndSCHEMATC
