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
Text HLabel 3075 3100 0    60   Output ~ 0
SENS_ON
$Comp
L MDBT42V MDBT42V_?
U 1 1 59A49511
P 3775 2950
F 0 "MDBT42V_?" H 4950 2350 60  0000 C CNN
F 1 "MDBT42V" H 4025 4175 60  0000 C CNN
F 2 "" H 3675 2975 60  0000 C CNN
F 3 "" H 3675 2975 60  0000 C CNN
	1    3775 2950
	1    0    0    -1  
$EndComp
Text GLabel 3525 3625 3    39   Input ~ 0
GND
Text GLabel 3050 2650 0    39   Input ~ 0
GND
Text GLabel 3700 2125 1    39   Input ~ 0
GND
Text GLabel 4750 2925 2    39   Input ~ 0
VCC
Text GLabel 4675 3125 2    39   Input ~ 0
GND
$Comp
L L_Small 10uH
U 1 1 59A56F50
P 4575 2775
F 0 "10uH" V 4650 2600 50  0000 L CNN
F 1 "L_Small" H 4605 2735 50  0001 L CNN
F 2 "" H 4575 2775 50  0000 C CNN
F 3 "" H 4575 2775 50  0000 C CNN
	1    4575 2775
	0    -1   -1   0   
$EndComp
$Comp
L L_Small 15nH
U 1 1 59A56FB5
P 4825 2775
F 0 "15nH" V 4900 2575 50  0000 L CNN
F 1 "L_Small" H 4855 2735 50  0001 L CNN
F 2 "" H 4825 2775 50  0000 C CNN
F 3 "" H 4825 2775 50  0000 C CNN
	1    4825 2775
	0    -1   -1   0   
$EndComp
$Comp
L C_Small 1.0uF
U 1 1 59A57061
P 5025 2850
F 0 "1.0uF" V 4900 2750 50  0000 L CNN
F 1 "C_Small" V 4825 2525 50  0001 L CNN
F 2 "" H 5025 2850 50  0000 C CNN
F 3 "" H 5025 2850 50  0000 C CNN
	1    5025 2850
	0    -1   -1   0   
$EndComp
Text GLabel 5175 2850 2    39   Input ~ 0
GND
Text Label 3125 2800 2    39   ~ 0
BLE_RESET
Text Label 1850 1000 0    39   ~ 0
BLE_RESET
$Comp
L SW_PUSH SW?
U 1 1 59A578FC
P 1375 1000
F 0 "SW?" H 1525 1110 50  0000 C CNN
F 1 "SW_PUSH" H 1375 920 39  0000 C CNN
F 2 "" H 1375 1000 50  0000 C CNN
F 3 "" H 1375 1000 50  0000 C CNN
	1    1375 1000
	1    0    0    -1  
$EndComp
Text GLabel 1750 1400 2    39   Input ~ 0
GND
$Comp
L R_Small R?
U 1 1 59A58475
P 1075 825
F 0 "R?" H 1105 845 50  0000 L CNN
F 1 "330" H 1105 785 50  0000 L CNN
F 2 "" H 1075 825 50  0000 C CNN
F 3 "" H 1075 825 50  0000 C CNN
	1    1075 825 
	-1   0    0    1   
$EndComp
Text GLabel 1075 625  0    39   Input ~ 0
VCC
$Comp
L R_Small R?
U 1 1 59A58BA4
P 1750 1175
F 0 "R?" H 1575 1225 50  0000 L CNN
F 1 "10K" H 1550 1125 50  0000 L CNN
F 2 "" H 1750 1175 50  0000 C CNN
F 3 "" H 1750 1175 50  0000 C CNN
	1    1750 1175
	-1   0    0    1   
$EndComp
Text HLabel 3625 3600 3    60   Output ~ 0
BUZZER
$Comp
L CONN_01X04 P?
U 1 1 59A5AF8E
P 2100 2800
F 0 "P?" H 2075 2525 50  0000 C CNN
F 1 "Programming" H 2175 3075 50  0000 C CNN
F 2 "" H 2100 2800 50  0000 C CNN
F 3 "" H 2100 2800 50  0000 C CNN
	1    2100 2800
	-1   0    0    -1  
$EndComp
Text GLabel 2375 2950 2    39   Input ~ 0
VDD
Text GLabel 2375 2650 2    39   Input ~ 0
GND
Text Label 3775 2375 1    39   ~ 0
LED1
Text Label 3850 2375 1    39   ~ 0
LED2
Text Label 3925 2375 1    39   ~ 0
LED3
Text Label 4000 2375 1    39   ~ 0
LED4
Text Label 4400 2700 0    39   ~ 0
LED5
Text Label 4400 2625 0    39   ~ 0
LED6
Text Label 4750 2100 0    39   ~ 0
LED[1..6]
Text HLabel 5025 2100 2    60   Output ~ 0
LED[1..6]
$Comp
L C_Small C?
U 1 1 59A69C81
P 4600 3025
F 0 "C?" H 4725 3025 50  0000 L CNN
F 1 "0.1uF" H 4600 2825 50  0000 L CNN
F 2 "" H 4600 3025 50  0000 C CNN
F 3 "" H 4600 3025 50  0000 C CNN
	1    4600 3025
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 59A6B727
P 3925 3925
F 0 "C?" H 3935 3995 50  0000 L CNN
F 1 "12pF" H 3775 3775 50  0000 L CNN
F 2 "" H 3925 3925 50  0000 C CNN
F 3 "" H 3925 3925 50  0000 C CNN
	1    3925 3925
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 59A6B778
P 4125 3925
F 0 "C?" H 4135 3995 50  0000 L CNN
F 1 "12pF" H 4175 3825 50  0000 L CNN
F 2 "" H 4125 3925 50  0000 C CNN
F 3 "" H 4125 3925 50  0000 C CNN
	1    4125 3925
	1    0    0    -1  
$EndComp
$Comp
L Crystal_Small Y?
U 1 1 59A6B5DD
P 4000 3750
F 0 "Y?" H 4000 3850 50  0000 C CNN
F 1 "32.768 kHz" H 4375 3825 50  0000 C CNN
F 2 "" H 4000 3750 50  0000 C CNN
F 3 "" H 4000 3750 50  0000 C CNN
	1    4000 3750
	1    0    0    -1  
$EndComp
Text GLabel 4025 4100 3    39   BiDi ~ 0
GND
Wire Wire Line
	3175 2650 3050 2650
Wire Wire Line
	3700 2375 3700 2125
Wire Wire Line
	4375 2925 4750 2925
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
	1675 1000 1850 1000
Wire Wire Line
	1750 1075 1750 1000
Connection ~ 1750 1000
Wire Wire Line
	1750 1275 1750 1400
Wire Wire Line
	1075 925  1075 1000
Wire Wire Line
	1075 725  1075 625 
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
	2375 2950 2300 2950
Wire Wire Line
	3175 2875 2375 2875
Wire Wire Line
	2375 2875 2375 2850
Wire Wire Line
	2375 2850 2300 2850
Wire Bus Line
	3875 2100 5025 2100
Wire Wire Line
	4550 3125 4675 3125
Wire Wire Line
	4375 3075 4550 3075
Wire Wire Line
	4550 3075 4550 3125
Connection ~ 4600 3125
Wire Wire Line
	4000 3575 4125 3575
Wire Wire Line
	3925 3575 3925 3675
Wire Wire Line
	3925 3675 3875 3675
Wire Wire Line
	3875 3675 3875 3825
Wire Wire Line
	3875 3825 3925 3825
Wire Wire Line
	3900 3750 3875 3750
Connection ~ 3875 3750
Wire Wire Line
	4125 3575 4125 3825
Wire Wire Line
	4100 3750 4125 3750
Connection ~ 4125 3750
Wire Wire Line
	3925 4025 4125 4025
Wire Wire Line
	4025 4100 4025 4025
Connection ~ 4025 4025
Wire Wire Line
	3775 2375 3775 2200
Wire Wire Line
	3850 2375 3850 2200
Wire Wire Line
	3925 2375 3925 2200
Wire Wire Line
	4000 2375 4000 2200
Wire Wire Line
	4375 2625 4525 2625
Wire Wire Line
	4375 2700 4525 2700
Entry Wire Line
	3775 2200 3875 2100
Entry Wire Line
	3850 2200 3950 2100
Entry Wire Line
	3925 2200 4025 2100
Entry Wire Line
	4000 2200 4100 2100
Entry Wire Line
	4525 2700 4625 2600
Entry Wire Line
	4525 2625 4625 2525
Wire Bus Line
	4625 2200 4625 2600
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
Entry Bus Bus
	4625 2200 4725 2100
Text HLabel 3700 3600 3    60   Input ~ 0
INT_UV
Text HLabel 3075 2950 0    60   Input ~ 0
INT_ACC1
Text HLabel 3075 3025 0    60   Input ~ 0
INT_ACC2
Wire Wire Line
	3075 2950 3175 2950
Wire Wire Line
	3075 3025 3175 3025
Wire Wire Line
	3075 3100 3175 3100
Wire Wire Line
	3125 2800 3175 2800
Wire Wire Line
	3625 3600 3625 3575
Wire Wire Line
	3700 3600 3700 3575
$EndSCHEMATC
