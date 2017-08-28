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
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 6575 2700 2    60   Output ~ 0
SCL
Text HLabel 6575 2800 2    60   BiDi ~ 0
SDA
Text HLabel 6575 2925 2    60   Output ~ 0
SENS_ON
$Comp
L MDBT42V MDBT42V_?
U 1 1 59A49511
P 3775 2950
F 0 "MDBT42V_?" H 4250 2200 60  0000 C CNN
F 1 "MDBT42V" H 4250 3675 60  0000 C CNN
F 2 "" H 3675 2975 60  0000 C CNN
F 3 "" H 3675 2975 60  0000 C CNN
	1    3775 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3175 2650 3050 2650
Wire Wire Line
	3700 2375 3700 2200
Text GLabel 3550 3725 3    39   Input ~ 0
GND
Wire Wire Line
	3550 3725 3550 3575
Text GLabel 3050 2650 0    39   Input ~ 0
GND
Text GLabel 3700 2200 1    39   Input ~ 0
GND
Text GLabel 4500 2925 2    39   Input ~ 0
VCC
Wire Wire Line
	4375 2925 4500 2925
Text GLabel 4500 3075 2    39   Input ~ 0
GND
Wire Wire Line
	4375 3075 4500 3075
$EndSCHEMATC
