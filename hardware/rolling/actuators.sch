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
$Comp
L Led_RGB_CA D1
U 1 1 59A5D950
P 1225 975
F 0 "D1" H 1225 1325 50  0000 C CNN
F 1 "LED[1..3]" H 1225 625 50  0000 C CNN
F 2 "cl-505s:cl-505s" H 1180 925 50  0001 C CNN
F 3 "" H 1180 925 50  0000 C CNN
	1    1225 975 
	-1   0    0    1   
$EndComp
$Comp
L Led_RGB_CA D2
U 1 1 59A5DA10
P 1250 1850
F 0 "D2" H 1250 2200 50  0000 C CNN
F 1 "LED[4..6]" H 1250 1500 50  0000 C CNN
F 2 "cl-505s:cl-505s" H 1205 1800 50  0001 C CNN
F 3 "" H 1205 1800 50  0000 C CNN
	1    1250 1850
	-1   0    0    1   
$EndComp
$Comp
L R_Small R8
U 1 1 59A5DAC4
P 1700 775
F 0 "R8" V 1575 925 50  0000 L CNN
F 1 "330" V 1600 725 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 1700 775 50  0001 C CNN
F 3 "" H 1700 775 50  0000 C CNN
	1    1700 775 
	0    1    1    0   
$EndComp
$Comp
L R_Small R9
U 1 1 59A5DB19
P 1700 975
F 0 "R9" V 1600 1150 50  0000 L CNN
F 1 "330" V 1625 925 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 1700 975 50  0001 C CNN
F 3 "" H 1700 975 50  0000 C CNN
	1    1700 975 
	0    1    1    0   
$EndComp
$Comp
L R_Small R10
U 1 1 59A5DB52
P 1700 1175
F 0 "R10" V 1600 1300 50  0000 L CNN
F 1 "330" V 1625 1125 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 1700 1175 50  0001 C CNN
F 3 "" H 1700 1175 50  0000 C CNN
	1    1700 1175
	0    1    1    0   
$EndComp
$Comp
L R_Small R11
U 1 1 59A5DB6F
P 1725 1650
F 0 "R11" V 1625 1850 50  0000 L CNN
F 1 "330" V 1625 1600 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 1725 1650 50  0001 C CNN
F 3 "" H 1725 1650 50  0000 C CNN
	1    1725 1650
	0    1    1    0   
$EndComp
$Comp
L R_Small R12
U 1 1 59A5DB92
P 1725 1850
F 0 "R12" V 1625 2075 50  0000 L CNN
F 1 "330" V 1650 1800 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 1725 1850 50  0001 C CNN
F 3 "" H 1725 1850 50  0000 C CNN
	1    1725 1850
	0    1    1    0   
$EndComp
$Comp
L R_Small R13
U 1 1 59A5DBBB
P 1725 2050
F 0 "R13" V 1650 2275 50  0000 L CNN
F 1 "330" V 1650 2000 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 1725 2050 50  0001 C CNN
F 3 "" H 1725 2050 50  0000 C CNN
	1    1725 2050
	0    1    1    0   
$EndComp
Text GLabel 850  1850 0    39   BiDi ~ 0
VCC
Text GLabel 825  975  0    39   BiDi ~ 0
VCC
Wire Wire Line
	1425 775  1600 775 
Wire Wire Line
	1425 975  1600 975 
Wire Wire Line
	1425 1175 1600 1175
Wire Wire Line
	1450 1650 1625 1650
Wire Wire Line
	1450 1850 1625 1850
Wire Wire Line
	1450 2050 1625 2050
Wire Wire Line
	1050 1850 850  1850
Wire Wire Line
	1025 975  825  975 
Wire Wire Line
	1825 1650 2100 1650
Wire Wire Line
	1825 1850 2100 1850
Wire Wire Line
	1825 2050 2100 2050
Wire Wire Line
	1800 775  2100 775 
Wire Wire Line
	1825 975  2100 975 
Wire Wire Line
	1800 1175 2100 1175
Entry Wire Line
	2100 775  2200 875 
Entry Wire Line
	2100 975  2200 1075
Entry Wire Line
	2100 1175 2200 1275
Entry Wire Line
	2100 1650 2200 1750
Entry Wire Line
	2100 1850 2200 1950
Entry Wire Line
	2100 2050 2200 2150
Wire Bus Line
	2200 875  2200 2150
Wire Bus Line
	2200 2150 2575 2150
Text Label 2275 2150 0    39   ~ 0
LED[1..6]
Text HLabel 2575 2150 2    60   Input ~ 0
LED[1..6]
$Comp
L BUZZER BZ1
U 1 1 59A5F9D2
P 2150 3325
F 0 "BZ1" H 2525 2975 60  0000 C CNN
F 1 "BUZZER" H 2550 3675 60  0000 C CNN
F 2 "PS1240P02CT3:PS1240P02" H 2275 3325 60  0001 C CNN
F 3 "" H 2275 3325 60  0000 C CNN
	1    2150 3325
	1    0    0    -1  
$EndComp
Text GLabel 1750 3400 0    39   BiDi ~ 0
GND
Wire Wire Line
	1925 3400 1750 3400
Text HLabel 1125 3250 0    60   Input ~ 0
BUZZER
$Comp
L R_Small R7
U 1 1 59A6096F
P 1375 3250
F 0 "R7" V 1575 3275 50  0000 L CNN
F 1 "330" V 1475 3200 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 1375 3250 50  0001 C CNN
F 3 "" H 1375 3250 50  0000 C CNN
	1    1375 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1725 3250 1925 3250
Wire Wire Line
	1275 3250 1125 3250
$Comp
L C_Small C8
U 1 1 59A84B40
P 1625 3250
F 0 "C8" H 1635 3320 50  0000 L CNN
F 1 "1uF" V 1725 3075 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 1625 3250 50  0001 C CNN
F 3 "" H 1625 3250 50  0000 C CNN
	1    1625 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1525 3250 1475 3250
Text Notes 650  1400 0    60   ~ 0
cl-505s
$EndSCHEMATC
