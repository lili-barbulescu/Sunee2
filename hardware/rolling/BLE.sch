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
Sheet 3 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3075 3175 0    60   Output ~ 0
SCL
Text HLabel 3450 3625 3    60   BiDi ~ 0
SDA
Text GLabel 3525 3625 3    39   Input ~ 0
GND
Text GLabel 3050 2650 0    39   Input ~ 0
GND
Text GLabel 3700 2300 1    39   Input ~ 0
GND
Text GLabel 4675 2925 2    39   Input ~ 0
VCC
Text GLabel 4675 3150 2    39   Input ~ 0
GND
$Comp
L L_Small 10uH1
U 1 1 59A56F50
P 4575 2775
F 0 "10uH1" V 4650 2600 50  0000 L CNN
F 1 "L_Small" H 4605 2735 50  0001 L CNN
F 2 "Resistors_SMD:R_0603" H 4575 2775 50  0001 C CNN
F 3 "" H 4575 2775 50  0000 C CNN
	1    4575 2775
	0    -1   -1   0   
$EndComp
$Comp
L L_Small 15nH1
U 1 1 59A56FB5
P 4825 2775
F 0 "15nH1" V 4900 2575 50  0000 L CNN
F 1 "L_Small" H 4855 2735 50  0001 L CNN
F 2 "Resistors_SMD:R_0402" H 4825 2775 50  0001 C CNN
F 3 "" H 4825 2775 50  0000 C CNN
	1    4825 2775
	0    -1   -1   0   
$EndComp
$Comp
L C_Small 1.0uF1
U 1 1 59A57061
P 5025 2850
F 0 "1.0uF1" V 4900 2750 50  0000 L CNN
F 1 "C_Small" V 4825 2525 50  0001 L CNN
F 2 "Capacitors_SMD:C_0402" H 5025 2850 50  0001 C CNN
F 3 "" H 5025 2850 50  0000 C CNN
	1    5025 2850
	0    -1   -1   0   
$EndComp
Text GLabel 5175 2850 2    39   Input ~ 0
GND
Text HLabel 4425 2625 2    60   Output ~ 0
BUZZER
Text GLabel 2375 2950 2    39   Input ~ 0
VCC
Text GLabel 2375 2650 2    39   Input ~ 0
GND
Text Label 5600 1250 0    39   ~ 0
LED[4..6]
Text HLabel 5975 1250 2    60   Output ~ 0
LED[4..6]
$Comp
L C_Small C7
U 1 1 59A69C81
P 4600 3050
F 0 "C7" H 4725 3050 50  0000 L CNN
F 1 "0.1uF" H 4600 2850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4600 3050 50  0001 C CNN
F 3 "" H 4600 3050 50  0000 C CNN
	1    4600 3050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C5
U 1 1 59A6B727
P 3875 3925
F 0 "C5" H 3885 3995 50  0000 L CNN
F 1 "12pF" H 3725 3775 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3875 3925 50  0001 C CNN
F 3 "" H 3875 3925 50  0000 C CNN
	1    3875 3925
	1    0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 59A6B778
P 4125 3925
F 0 "C6" H 4135 3995 50  0000 L CNN
F 1 "12pF" H 4175 3825 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4125 3925 50  0001 C CNN
F 3 "" H 4125 3925 50  0000 C CNN
	1    4125 3925
	1    0    0    -1  
$EndComp
$Comp
L Crystal_Small Y1
U 1 1 59A6B5DD
P 4000 3750
F 0 "Y1" H 4000 3850 50  0000 C CNN
F 1 "32.768 kHz" H 4375 3825 50  0000 C CNN
F 2 "K135:K135" H 4000 3750 50  0001 C CNN
F 3 "" H 4000 3750 50  0000 C CNN
	1    4000 3750
	1    0    0    -1  
$EndComp
Text GLabel 4025 4100 3    39   Input ~ 0
GND
Text HLabel 4475 3200 3    60   Input ~ 0
INT_UV
Text HLabel 3625 3600 3    60   Input ~ 0
INT_ACC2
Wire Wire Line
	3175 2650 3050 2650
Wire Wire Line
	3700 2375 3700 2300
Wire Wire Line
	4375 2925 4675 2925
Wire Wire Line
	4375 2775 4475 2775
Wire Wire Line
	4675 2775 4725 2775
Wire Wire Line
	4925 2850 4375 2850
Wire Wire Line
	4925 2775 4925 2850
Wire Wire Line
	5125 2850 5175 2850
Wire Wire Line
	3175 3175 3075 3175
Wire Wire Line
	3175 2725 2375 2725
Wire Wire Line
	2375 2725 2375 2750
Wire Wire Line
	2375 2750 2300 2750
Wire Wire Line
	2375 2650 2300 2650
Wire Wire Line
	3175 2875 2375 2875
Wire Wire Line
	2375 2875 2375 2850
Wire Wire Line
	2375 2850 2300 2850
Wire Bus Line
	5350 1250 5975 1250
Wire Wire Line
	4500 3150 4675 3150
Wire Wire Line
	4375 3075 4500 3075
Wire Wire Line
	4500 3075 4500 3150
Connection ~ 4600 3150
Wire Wire Line
	4000 3575 4125 3575
Wire Wire Line
	3875 3575 3925 3575
Wire Wire Line
	3875 3575 3875 3825
Wire Wire Line
	3900 3750 3875 3750
Connection ~ 3875 3750
Wire Wire Line
	4125 3575 4125 3825
Wire Wire Line
	4100 3750 4125 3750
Connection ~ 4125 3750
Wire Wire Line
	3875 4025 4125 4025
Wire Wire Line
	4025 4100 4025 4025
Connection ~ 4025 4025
Wire Wire Line
	3525 3625 3525 3600
Wire Wire Line
	3525 3600 3550 3600
Wire Wire Line
	3550 3600 3550 3575
Wire Wire Line
	3450 3625 3450 3600
Wire Wire Line
	3450 3600 3475 3600
Wire Wire Line
	3475 3600 3475 3575
Wire Wire Line
	4600 2950 4600 2925
Connection ~ 4600 2925
Wire Wire Line
	2375 2950 2300 2950
Wire Wire Line
	3925 2375 3925 2300
Wire Wire Line
	3025 3100 3175 3100
Text Label 3025 3100 0    39   ~ 0
LED4
Text Label 3025 3025 0    39   ~ 0
LED5
Wire Wire Line
	3025 3025 3175 3025
Wire Wire Line
	3025 2950 3175 2950
Text Label 3025 2950 0    39   ~ 0
LED6
Entry Wire Line
	5250 1350 5350 1250
Wire Wire Line
	5250 1350 5250 1475
Text Label 5250 1475 1    39   ~ 0
LED4
Entry Wire Line
	5325 1350 5425 1250
Wire Wire Line
	5325 1350 5325 1475
Text Label 5325 1475 1    39   ~ 0
LED5
Entry Wire Line
	5400 1350 5500 1250
Wire Wire Line
	5400 1475 5400 1350
Text Label 5400 1475 1    39   ~ 0
LED6
Text GLabel 3925 2300 1    39   Input ~ 0
VCC
$Comp
L CONN_01X04 P1
U 1 1 5A1B5D18
P 2100 2800
F 0 "P1" H 2100 3050 50  0000 C CNN
F 1 "CONN_01X04" V 2200 2800 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x04" H 2100 2800 50  0001 C CNN
F 3 "" H 2100 2800 50  0000 C CNN
	1    2100 2800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4425 2625 4375 2625
Text HLabel 3700 3600 3    60   Input ~ 0
INT_ACC1
$Comp
L MDBT42V MDBT42V_1
U 1 1 59A49511
P 3775 2950
F 0 "MDBT42V_1" H 2875 2400 60  0000 C CNN
F 1 "MDBT42V" H 3250 3650 60  0000 C CNN
F 2 "MDBT42V:MDBT42V" H 3675 2975 60  0001 C CNN
F 3 "" H 3675 2975 60  0000 C CNN
	1    3775 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3575 3700 3600
Wire Wire Line
	3625 3575 3625 3600
Wire Wire Line
	4375 3000 4475 3000
Wire Wire Line
	4475 3000 4475 3200
$EndSCHEMATC
