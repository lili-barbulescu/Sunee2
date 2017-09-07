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
F4 "INT_UV" O L 5450 1850 60 
F5 "INT_ACC1" O L 5450 1925 60 
F6 "INT_ACC2" O L 5450 2000 60 
$EndSheet
Wire Wire Line
	675  4025 675  4150
Wire Wire Line
	675  3675 675  3725
$Sheet
S 3575 1125 1200 1475
U 59A43647
F0 "BLE" 60
F1 "BLE.sch" 60
F2 "SCL" O R 4775 1375 60 
F3 "SDA" B R 4775 1275 60 
F4 "BUZZER" O L 3575 1400 60 
F5 "LED[1..6]" O L 3575 1275 60 
F6 "INT_UV" I R 4775 1850 60 
F7 "INT_ACC1" I R 4775 1925 60 
F8 "INT_ACC2" I R 4775 2000 60 
$EndSheet
Wire Wire Line
	4775 1275 5450 1275
Wire Wire Line
	5450 1375 4775 1375
Text GLabel 1675 3600 2    60   BiDi ~ 0
VCC
Text GLabel 675  4150 2    60   BiDi ~ 0
GND
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
Wire Wire Line
	5450 1850 4775 1850
Wire Wire Line
	4775 1925 5450 1925
Wire Wire Line
	5450 2000 4775 2000
Wire Wire Line
	1675 3600 1675 3675
$Comp
L SPST SW1
U 1 1 59A906BB
P 1175 3675
F 0 "SW1" H 1175 3775 50  0000 C CNN
F 1 "Power" H 1175 3550 50  0000 C CNN
F 2 "DPDT:DPDT" H 1175 3675 50  0001 C CNN
F 3 "" H 1175 3675 50  0000 C CNN
	1    1175 3675
	1    0    0    -1  
$EndComp
$Comp
L Battery BT1
U 1 1 59B17FFF
P 675 3875
F 0 "BT1" H 775 3925 50  0000 L CNN
F 1 "Battery" H 775 3825 50  0000 L CNN
F 2 "3030:3034" V 675 3915 50  0001 C CNN
F 3 "" V 675 3915 50  0000 C CNN
	1    675  3875
	1    0    0    -1  
$EndComp
$EndSCHEMATC
