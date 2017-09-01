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
Sheet 2 4
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
Text HLabel 1150 2600 0    60   BiDi ~ 0
SDA
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
Text HLabel 1150 2750 0    60   Input ~ 0
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
Text HLabel 4575 1625 0    60   Output ~ 0
INT_UV
Text Label 6900 1025 0    60   ~ 0
SENS_VCC
$Comp
L R R6
U 1 1 59A5946B
P 6625 1025
F 0 "R6" V 6705 1025 50  0000 C CNN
F 1 "10K" V 6625 1025 50  0000 C CNN
F 2 "" V 6555 1025 50  0001 C CNN
F 3 "" H 6625 1025 50  0001 C CNN
	1    6625 1025
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
Text HLabel 8450 1000 1    60   Input ~ 0
SCL
$Comp
L C C4
U 1 1 59A5D521
P 9100 1950
F 0 "C4" H 9125 2050 50  0000 L CNN
F 1 "100nF" H 9125 1850 50  0000 L CNN
F 2 "" H 9138 1800 50  0001 C CNN
F 3 "" H 9100 1950 50  0001 C CNN
	1    9100 1950
	1    0    0    -1  
$EndComp
Text Label 9100 725  0    60   ~ 0
SENS_VCC
Text HLabel 8525 2025 3    60   Output ~ 0
INT_ACC1
Text HLabel 8600 2025 3    60   Output ~ 0
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
Text Label 3550 1025 0    60   ~ 0
SENS_VCC
Wire Wire Line
	4575 1325 5525 1325
Wire Wire Line
	4600 1425 5525 1425
Wire Wire Line
	5400 825  5400 1825
Wire Wire Line
	4575 1625 5525 1625
Wire Wire Line
	5400 1525 5525 1525
Connection ~ 5400 1525
Wire Wire Line
	5250 1225 5250 1625
Connection ~ 5250 1625
Wire Wire Line
	6200 1325 6475 1325
Wire Wire Line
	6200 1425 6575 1425
Wire Wire Line
	6475 1625 6200 1625
Wire Wire Line
	6475 1525 6200 1525
Wire Wire Line
	7600 1550 8125 1550
Wire Wire Line
	8025 2000 8025 2100
Wire Wire Line
	8025 725  8025 1700
Wire Wire Line
	8025 1625 8125 1625
Connection ~ 8025 1625
Wire Wire Line
	7750 1475 8125 1475
Wire Wire Line
	8450 1000 8450 1200
Wire Wire Line
	8525 1150 8525 1200
Wire Wire Line
	8525 1150 8025 1150
Connection ~ 8025 1150
Wire Wire Line
	8900 1500 9250 1500
Wire Wire Line
	9250 1500 9250 2625
Wire Wire Line
	8900 1575 9250 1575
Connection ~ 9250 1575
Wire Wire Line
	8450 1925 8450 2525
Wire Wire Line
	8450 2525 9250 2525
Connection ~ 9100 2525
Wire Wire Line
	9100 2100 9100 2525
Wire Wire Line
	3550 1175 3550 1025
Wire Wire Line
	3550 1475 3550 1600
Text GLabel 3550 1600 2    60   BiDi ~ 0
GND
Text GLabel 5400 2275 2    60   BiDi ~ 0
GND
Wire Wire Line
	5400 2125 5400 2275
Connection ~ 9250 2525
Text GLabel 8025 2100 2    60   BiDi ~ 0
GND
Text GLabel 9250 2625 2    60   BiDi ~ 0
GND
Text GLabel 7750 1475 1    60   BiDi ~ 0
GND
Wire Wire Line
	6775 1025 6900 1025
Text GLabel 6575 1425 2    60   BiDi ~ 0
GND
Wire Wire Line
	6475 1025 6475 1625
Connection ~ 6475 1325
Connection ~ 6475 1525
Wire Wire Line
	5250 925  5250 875 
Connection ~ 5400 875 
Wire Wire Line
	9100 725  9100 1800
Wire Wire Line
	8900 1650 9100 1650
Connection ~ 9100 1650
Wire Wire Line
	5250 875  5400 875 
Text Label 1650 2325 0    60   ~ 0
SENS_VCC
$Comp
L R R?
U 1 1 59A7FC01
P 1425 2600
F 0 "R?" V 1505 2600 50  0000 C CNN
F 1 "5K" V 1425 2600 50  0000 C CNN
F 2 "" V 1355 2600 50  0001 C CNN
F 3 "" H 1425 2600 50  0001 C CNN
	1    1425 2600
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 59A7FCB1
P 1425 2750
F 0 "R?" V 1505 2750 50  0000 C CNN
F 1 "5K" V 1425 2750 50  0000 C CNN
F 2 "" V 1355 2750 50  0001 C CNN
F 3 "" H 1425 2750 50  0001 C CNN
	1    1425 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 2325 1650 2750
Wire Wire Line
	1275 2600 1150 2600
Wire Wire Line
	1150 2750 1275 2750
Wire Wire Line
	1650 2600 1575 2600
Wire Wire Line
	1650 2750 1575 2750
Connection ~ 1650 2600
Text HLabel 4575 1325 0    60   BiDi ~ 0
SDA
Text HLabel 4600 1425 0    60   Input ~ 0
SCL
Wire Wire Line
	8600 2025 8600 1925
Wire Wire Line
	8525 1925 8525 2025
$EndSCHEMATC
