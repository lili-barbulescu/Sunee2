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
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 3450 1625 0    39   ~ 0
LED[4..6]
Text HLabel 3750 1625 2    60   Input ~ 0
LED[4..6]
$Comp
L BUZZER BZ1
U 1 1 59A5F9D2
P 3100 2350
F 0 "BZ1" H 3475 2000 60  0000 C CNN
F 1 "BUZZER" H 3500 2700 60  0000 C CNN
F 2 "PS1240P02CT3:PS1240P02" H 3225 2350 60  0001 C CNN
F 3 "" H 3225 2350 60  0000 C CNN
	1    3100 2350
	1    0    0    -1  
$EndComp
Text HLabel 2075 2275 0    60   Input ~ 0
BUZZER
$Comp
L R_Small R7
U 1 1 59A6096F
P 2325 2275
F 0 "R7" V 2525 2300 50  0000 L CNN
F 1 "330" V 2425 2225 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 2325 2275 50  0001 C CNN
F 3 "" H 2325 2275 50  0000 C CNN
	1    2325 2275
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C8
U 1 1 59A84B40
P 2575 2275
F 0 "C8" H 2585 2345 50  0000 L CNN
F 1 "1uF" V 2675 2100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2575 2275 50  0001 C CNN
F 3 "" H 2575 2275 50  0000 C CNN
	1    2575 2275
	0    -1   -1   0   
$EndComp
Text GLabel 2625 2425 0    60   BiDi ~ 0
GND
Entry Wire Line
	3275 1525 3375 1625
Entry Wire Line
	3275 1325 3375 1425
Entry Wire Line
	3275 1125 3375 1225
Text Label 3050 1525 0    60   ~ 0
LED6
Text Label 3050 1325 0    60   ~ 0
LED5
Text Label 3050 1125 0    60   ~ 0
LED4
$Comp
L R_Small R13
U 1 1 59A5DBBB
P 2900 1525
F 0 "R13" V 2975 1300 50  0000 L CNN
F 1 "330" V 2825 1475 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 2900 1525 50  0001 C CNN
F 3 "" H 2900 1525 50  0000 C CNN
	1    2900 1525
	0    1    1    0   
$EndComp
$Comp
L R_Small R12
U 1 1 59A5DB92
P 2900 1325
F 0 "R12" V 2975 1100 50  0000 L CNN
F 1 "330" V 2825 1275 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 2900 1325 50  0001 C CNN
F 3 "" H 2900 1325 50  0000 C CNN
	1    2900 1325
	0    1    1    0   
$EndComp
$Comp
L R_Small R11
U 1 1 59A5DB6F
P 2900 1125
F 0 "R11" V 2950 900 50  0000 L CNN
F 1 "330" V 2800 1075 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 2900 1125 50  0001 C CNN
F 3 "" H 2900 1125 50  0000 C CNN
	1    2900 1125
	0    1    1    0   
$EndComp
Text GLabel 2125 1325 0    39   BiDi ~ 0
VCC
Wire Bus Line
	3375 1625 3750 1625
Wire Wire Line
	2625 2425 2875 2425
Wire Wire Line
	2675 2275 2875 2275
Wire Wire Line
	2475 2275 2425 2275
Wire Wire Line
	2075 2275 2225 2275
Wire Wire Line
	3000 1525 3275 1525
Wire Wire Line
	3000 1325 3275 1325
Wire Wire Line
	3000 1125 3275 1125
Wire Wire Line
	2225 1325 2125 1325
Wire Bus Line
	3375 1225 3375 1625
$Comp
L Led_RGB_CA D2
U 1 1 59A5DA10
P 2425 1325
F 0 "D2" H 2425 1675 50  0000 C CNN
F 1 "LED[4..6]" H 2425 975 50  0000 C CNN
F 2 "ASMB-MTB0-0A3A2:ASMB-MTB0-0A3A2" H 2380 1275 50  0001 C CNN
F 3 "" H 2380 1275 50  0000 C CNN
	1    2425 1325
	-1   0    0    1   
$EndComp
Wire Wire Line
	2625 1125 2800 1125
Wire Wire Line
	2625 1325 2800 1325
Wire Wire Line
	2625 1525 2800 1525
$EndSCHEMATC
