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
LIBS:buzzer
LIBS:mdbt42v
LIBS:si1133
LIBS:battery
LIBS:mech
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
F 2 "SI1133:SI1133" H 5950 1625 60  0001 C CNN
F 3 "" H 5950 1625 60  0000 C CNN
	1    5950 1625
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 59A58552
P 5250 1075
F 0 "R5" V 5330 1075 50  0000 C CNN
F 1 "5K" V 5250 1075 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 5180 1075 50  0001 C CNN
F 3 "" H 5250 1075 50  0001 C CNN
	1    5250 1075
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 59A58AFA
P 5400 1975
F 0 "C1" H 5425 2075 50  0000 L CNN
F 1 "0.1uF" H 5425 1875 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5438 1825 50  0001 C CNN
F 3 "" H 5400 1975 50  0001 C CNN
	1    5400 1975
	1    0    0    -1  
$EndComp
Text HLabel 2525 3475 0    60   Output ~ 0
INT_UV
$Comp
L R R6
U 1 1 59A5946B
P 6475 1050
F 0 "R6" V 6555 1050 50  0000 C CNN
F 1 "10K" V 6475 1050 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 6405 1050 50  0001 C CNN
F 3 "" H 6475 1050 50  0001 C CNN
	1    6475 1050
	-1   0    0    1   
$EndComp
$Comp
L BMA253 ACC1
U 1 1 59A5A90C
P 8500 1575
F 0 "ACC1" H 8800 1925 60  0000 C CNN
F 1 "BMA253" H 8850 1200 60  0000 C CNN
F 2 "BMA250E:BMA250E" H 8375 1425 60  0001 C CNN
F 3 "" H 8375 1425 60  0000 C CNN
	1    8500 1575
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 59A5B737
P 8025 1850
F 0 "C3" H 8050 1950 50  0000 L CNN
F 1 "0.1uF" H 8050 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 8063 1700 50  0001 C CNN
F 3 "" H 8025 1850 50  0001 C CNN
	1    8025 1850
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 59A5D521
P 9100 1950
F 0 "C4" H 9125 2050 50  0000 L CNN
F 1 "100nF" H 9125 1850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 9138 1800 50  0001 C CNN
F 3 "" H 9100 1950 50  0001 C CNN
	1    9100 1950
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 59A6BF87
P 3550 1325
F 0 "C2" H 3575 1425 50  0000 L CNN
F 1 "0.1uF" H 3575 1225 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3588 1175 50  0001 C CNN
F 3 "" H 3550 1325 50  0001 C CNN
	1    3550 1325
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 825  5400 1825
Wire Wire Line
	4750 1625 5525 1625
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
	8025 2000 8025 2250
Wire Wire Line
	8025 725  8025 1700
Wire Wire Line
	8025 1625 8125 1625
Connection ~ 8025 1625
Wire Wire Line
	7600 1475 8125 1475
Wire Wire Line
	8450 875  8450 1200
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
	9100 2100 9100 2525
Wire Wire Line
	3550 1175 3550 1025
Wire Wire Line
	3550 1475 3550 1600
Wire Wire Line
	5400 2125 5400 2275
Connection ~ 9250 2525
Wire Wire Line
	6475 1200 6475 1625
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
$Comp
L R R1
U 1 1 59A7FC01
P 1425 2600
F 0 "R1" V 1505 2600 50  0000 C CNN
F 1 "5K" V 1425 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 1355 2600 50  0001 C CNN
F 3 "" H 1425 2600 50  0001 C CNN
	1    1425 2600
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 59A7FCB1
P 1425 2750
F 0 "R2" V 1505 2750 50  0000 C CNN
F 1 "5K" V 1425 2750 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 1355 2750 50  0001 C CNN
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
Wire Wire Line
	8600 2025 8600 1925
Wire Wire Line
	8525 1925 8525 2025
Wire Wire Line
	2550 2875 2875 2875
Wire Wire Line
	4675 2875 4050 2875
Wire Wire Line
	4675 2975 4050 2975
Text HLabel 2525 3075 0    60   BiDi ~ 0
SDA
Text HLabel 2525 3175 0    60   Input ~ 0
SCL
Wire Wire Line
	2875 3075 2525 3075
Wire Wire Line
	2525 3175 2875 3175
Text Label 5125 3150 2    60   ~ 0
SDA_UP
Text Label 5125 3250 2    60   ~ 0
SCL_UP
Wire Wire Line
	4050 3175 4150 3175
Wire Wire Line
	4050 3075 4325 3075
Text GLabel 2550 2975 0    60   BiDi ~ 0
GND
Wire Wire Line
	2550 2975 2875 2975
$Comp
L CONN_01X04 PU3
U 1 1 59B0733A
P 3850 3025
F 0 "PU3" H 3850 3275 50  0000 C CNN
F 1 "CONN_01X04" V 3950 3025 50  0001 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x04" H 3850 3025 50  0001 C CNN
F 3 "" H 3850 3025 50  0000 C CNN
	1    3850 3025
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X04 PD3
U 1 1 59B077DC
P 3075 3025
F 0 "PD3" H 3075 3275 50  0000 C CNN
F 1 "CONN_01X04" V 3175 3025 50  0001 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x04" H 3075 3025 50  0001 C CNN
F 3 "" H 3075 3025 50  0000 C CNN
	1    3075 3025
	1    0    0    -1  
$EndComp
Text Label 4750 1625 0    60   ~ 0
INT_UV_UP
Text HLabel 2525 3575 0    60   Output ~ 0
INT_ACC2
Text HLabel 2525 3675 0    60   Output ~ 0
INT_ACC1
Wire Wire Line
	2525 3375 2875 3375
Wire Wire Line
	2875 3475 2525 3475
Wire Wire Line
	2525 3675 2875 3675
Text Label 4650 3575 2    60   ~ 0
INT_ACC2_UP
Text Label 4650 3675 2    60   ~ 0
INT_ACC1_UP
Text Label 4650 3475 2    60   ~ 0
INT_UV_UP
Wire Wire Line
	4650 3675 4050 3675
Wire Wire Line
	4050 3475 4650 3475
Text Label 8025 2250 0    60   ~ 0
GND_UP
Wire Wire Line
	6475 900  6475 825 
Text Label 8525 2025 3    60   ~ 0
INT_ACC1_UP
Text Label 8600 2025 3    60   ~ 0
INT_ACC2_UP
Wire Wire Line
	8025 2075 8450 2075
Connection ~ 8025 2075
Wire Wire Line
	8450 2075 8450 1925
Wire Wire Line
	9100 2525 9250 2525
Text Label 7600 1550 0    60   ~ 0
SDA_UP
Text Label 8450 875  0    60   ~ 0
SCL_UP
Text Label 4900 1325 0    60   ~ 0
SDA_UP
Text Label 4900 1425 0    60   ~ 0
SCL_UP
Wire Wire Line
	4900 1425 5525 1425
Wire Wire Line
	4900 1325 5525 1325
Text Label 1150 2600 2    60   ~ 0
SDA_UP
Text Label 1150 2750 2    60   ~ 0
SCL_UP
Text GLabel 2525 3375 0    60   Input ~ 0
BUZZ_D
Wire Wire Line
	2525 3575 2875 3575
Text GLabel 4225 3300 2    60   Input ~ 0
BUZZ_U
Wire Wire Line
	4050 3575 4650 3575
Text GLabel 4675 2975 2    60   BiDi ~ 0
GND_UP
Text GLabel 1650 2325 2    60   BiDi ~ 0
VCC_UP
Text GLabel 3550 1025 2    60   BiDi ~ 0
VCC_UP
Text GLabel 5400 825  2    60   BiDi ~ 0
VCC_UP
Text GLabel 6475 825  2    60   BiDi ~ 0
VCC_UP
Text GLabel 8025 725  2    60   BiDi ~ 0
VCC_UP
Text GLabel 9100 725  2    60   BiDi ~ 0
VCC_UP
Text GLabel 9250 2625 2    60   BiDi ~ 0
GND_UP
Text GLabel 7600 1475 0    60   BiDi ~ 0
GND_UP
Text GLabel 6575 1425 2    60   BiDi ~ 0
GND_UP
Text GLabel 5400 2275 2    60   BiDi ~ 0
GND_UP
Text GLabel 4675 2875 2    60   BiDi ~ 0
VCC_UP
Text GLabel 2550 2875 0    60   BiDi ~ 0
VCC
Text GLabel 3550 1600 2    60   BiDi ~ 0
GND_UP
Wire Wire Line
	4050 3375 4225 3375
Wire Wire Line
	4225 3375 4225 3300
$Comp
L CONN_01X05 PD4
U 1 1 59BFE4A2
P 3075 3575
F 0 "PD4" H 3075 3875 50  0000 C CNN
F 1 "CONN_01X05" V 3175 3575 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x05" H 3075 3575 50  0001 C CNN
F 3 "" H 3075 3575 50  0000 C CNN
	1    3075 3575
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 PU4
U 1 1 59BFE5E7
P 3850 3575
F 0 "PU4" H 3850 3875 50  0000 C CNN
F 1 "CONN_01X05" V 3950 3575 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x05" H 3850 3575 50  0001 C CNN
F 3 "" H 3850 3575 50  0000 C CNN
	1    3850 3575
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2525 3775 2875 3775
Text GLabel 2525 3775 0    60   BiDi ~ 0
GND
Text GLabel 4250 3775 2    60   BiDi ~ 0
GND_UP
Wire Wire Line
	4250 3775 4050 3775
$Comp
L R_Small R14
U 1 1 59C00AFB
P 4250 3175
F 0 "R14" V 4175 3225 50  0000 L CNN
F 1 "100" V 4325 3125 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 4250 3175 50  0001 C CNN
F 3 "" H 4250 3175 50  0000 C CNN
	1    4250 3175
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R15
U 1 1 59C00B5B
P 4425 3075
F 0 "R15" V 4500 2950 50  0000 L CNN
F 1 "100" V 4500 3125 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 4425 3075 50  0001 C CNN
F 3 "" H 4425 3075 50  0000 C CNN
	1    4425 3075
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 3175 4675 3175
Wire Wire Line
	4675 3175 4675 3250
Wire Wire Line
	4675 3250 5125 3250
Wire Wire Line
	5125 3150 4675 3150
Wire Wire Line
	4675 3150 4675 3075
Wire Wire Line
	4675 3075 4525 3075
$EndSCHEMATC
