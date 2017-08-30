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
Sheet 1 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 5450 1050 1000 1575
U 59A4369B
F0 "sensors" 60
F1 "sensors.sch" 60
F2 "SCL" I L 5450 1375 60 
F3 "SDA" B L 5450 1275 60 
F4 "SENS_ON" I L 5450 1500 60 
$EndSheet
$Comp
L Battery BT1
U 1 1 59A44A38
P 675 3225
F 0 "BT1" H 775 3275 50  0000 L CNN
F 1 "Battery" H 775 3175 50  0000 L CNN
F 2 "" V 675 3265 50  0000 C CNN
F 3 "" V 675 3265 50  0000 C CNN
	1    675  3225
	1    0    0    -1  
$EndComp
Wire Wire Line
	675  3375 675  3500
Wire Wire Line
	675  3000 675  3075
$Sheet
S 3575 1125 1200 1475
U 59A43647
F0 "BLE" 60
F1 "BLE.sch" 60
F2 "SCL" O R 4775 1375 60 
F3 "SDA" B R 4775 1275 60 
F4 "SENS_ON" O R 4775 1500 60 
F5 "BUZZER" O L 3575 1400 60 
F6 "LED[1..6]" O L 3575 1275 60 
$EndSheet
Wire Wire Line
	4775 1275 5450 1275
Wire Wire Line
	5450 1375 4775 1375
Text GLabel 675  3000 2    60   BiDi ~ 0
VCC
Text GLabel 675  3500 2    60   BiDi ~ 0
GND
Wire Wire Line
	4775 1500 5450 1500
$Sheet
S 1650 1125 1325 1475
U 59A5D52C
F0 "actuators" 60
F1 "actuators.sch" 60
F2 "LED[1..6]" I R 2975 1275 60 
F3 "BUZZER" I R 2975 1400 60 
$EndSheet
Text Label 3125 1275 0    39   ~ 0
LED[1..6]
Wire Bus Line
	2975 1275 3575 1275
Wire Wire Line
	2975 1400 3575 1400
$EndSCHEMATC
