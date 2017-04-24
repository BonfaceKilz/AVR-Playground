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
LIBS:hello_world-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Hello World"
Date "2017-04-24"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA328P-AU U1
U 1 1 58FE4926
P 5000 4650
F 0 "U1" H 4250 5900 50  0000 L BNN
F 1 "ATMEGA328P-AU" H 5400 3250 50  0000 L BNN
F 2 "Housings_DIP:DIP-32_W15.24mm_Socket_LongPads" H 5000 4650 50  0001 C CIN
F 3 "" H 5000 4650 50  0001 C CNN
	1    5000 4650
	1    0    0    -1  
$EndComp
NoConn ~ 4100 3650
NoConn ~ 4100 3850
NoConn ~ 4100 4150
NoConn ~ 4100 4900
NoConn ~ 4100 5000
$Comp
L R R1
U 1 1 58FE4AB2
P 6600 5150
F 0 "R1" V 6680 5150 50  0000 C CNN
F 1 "1k" V 6600 5150 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 6530 5150 50  0001 C CNN
F 3 "" H 6600 5150 50  0001 C CNN
	1    6600 5150
	0    1    1    0   
$EndComp
$Comp
L LED D1
U 1 1 58FE4B9C
P 7200 5150
F 0 "D1" H 7200 5250 50  0000 C CNN
F 1 "LED" H 7200 5050 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 7200 5150 50  0001 C CNN
F 3 "" H 7200 5150 50  0001 C CNN
	1    7200 5150
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR01
U 1 1 58FE4C10
P 7650 5350
F 0 "#PWR01" H 7650 5100 50  0001 C CNN
F 1 "GND" H 7650 5200 50  0000 C CNN
F 2 "" H 7650 5350 50  0001 C CNN
F 3 "" H 7650 5350 50  0001 C CNN
	1    7650 5350
	1    0    0    -1  
$EndComp
NoConn ~ 6000 3550
NoConn ~ 6000 3650
NoConn ~ 6000 3750
NoConn ~ 6000 3850
NoConn ~ 6000 3950
NoConn ~ 6000 4050
NoConn ~ 6000 4150
NoConn ~ 6000 4250
NoConn ~ 6000 4400
NoConn ~ 6000 4500
NoConn ~ 6000 4600
NoConn ~ 6000 4700
NoConn ~ 6000 4800
NoConn ~ 6000 4900
NoConn ~ 6000 5000
NoConn ~ 6000 5250
NoConn ~ 6000 5350
NoConn ~ 6000 5450
NoConn ~ 6000 5550
NoConn ~ 6000 5650
NoConn ~ 6000 5750
NoConn ~ 6000 5850
NoConn ~ 4100 5850
NoConn ~ 4100 5750
$Comp
L PWR_FLAG #FLG02
U 1 1 58FE5111
P 6700 3250
F 0 "#FLG02" H 6700 3325 50  0001 C CNN
F 1 "PWR_FLAG" H 6700 3400 50  0000 C CNN
F 2 "" H 6700 3250 50  0001 C CNN
F 3 "" H 6700 3250 50  0001 C CNN
	1    6700 3250
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 58FE512C
P 7200 3250
F 0 "#FLG03" H 7200 3325 50  0001 C CNN
F 1 "PWR_FLAG" H 7200 3400 50  0000 C CNN
F 2 "" H 7200 3250 50  0001 C CNN
F 3 "" H 7200 3250 50  0001 C CNN
	1    7200 3250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR04
U 1 1 58FE5149
P 6700 3450
F 0 "#PWR04" H 6700 3300 50  0001 C CNN
F 1 "+5V" H 6700 3590 50  0000 C CNN
F 2 "" H 6700 3450 50  0001 C CNN
F 3 "" H 6700 3450 50  0001 C CNN
	1    6700 3450
	1    0    0    1   
$EndComp
$Comp
L GND #PWR05
U 1 1 58FE519F
P 7200 3450
F 0 "#PWR05" H 7200 3200 50  0001 C CNN
F 1 "GND" H 7200 3300 50  0000 C CNN
F 2 "" H 7200 3450 50  0001 C CNN
F 3 "" H 7200 3450 50  0001 C CNN
	1    7200 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 58FE4A4D
P 3500 5900
F 0 "#PWR06" H 3500 5650 50  0001 C CNN
F 1 "GND" H 3500 5750 50  0000 C CNN
F 2 "" H 3500 5900 50  0001 C CNN
F 3 "" H 3500 5900 50  0001 C CNN
	1    3500 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3550 3500 4050
Wire Wire Line
	4100 3550 3500 3550
Wire Wire Line
	4100 5650 3500 5650
Wire Wire Line
	3500 5650 3500 5900
Wire Wire Line
	6450 5150 6000 5150
Wire Wire Line
	7050 5150 6750 5150
Wire Wire Line
	7350 5150 7650 5150
Wire Wire Line
	7650 5150 7650 5350
Wire Wire Line
	7200 3250 7200 3450
Wire Wire Line
	6700 3250 6700 3450
$Comp
L +5V #PWR07
U 1 1 58FE49B2
P 3500 4050
F 0 "#PWR07" H 3500 3900 50  0001 C CNN
F 1 "+5V" H 3500 4190 50  0000 C CNN
F 2 "" H 3500 4050 50  0001 C CNN
F 3 "" H 3500 4050 50  0001 C CNN
	1    3500 4050
	1    0    0    1   
$EndComp
$Comp
L myConn2 U2
U 1 1 58FE635C
P 2600 4900
F 0 "U2" H 2550 4900 60  0000 C CNN
F 1 "myConn2" H 2500 5250 60  0000 C CNN
F 2 "Connectors:Banana_Jack_2Pin" H 2550 4900 60  0001 C CNN
F 3 "" H 2550 4900 60  0001 C CNN
	1    2600 4900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR08
U 1 1 58FE639D
P 3200 4700
F 0 "#PWR08" H 3200 4550 50  0001 C CNN
F 1 "+5V" H 3200 4840 50  0000 C CNN
F 2 "" H 3200 4700 50  0001 C CNN
F 3 "" H 3200 4700 50  0001 C CNN
	1    3200 4700
	1    0    0    1   
$EndComp
$Comp
L GND #PWR09
U 1 1 58FE63B4
P 3200 5100
F 0 "#PWR09" H 3200 4850 50  0001 C CNN
F 1 "GND" H 3200 4950 50  0000 C CNN
F 2 "" H 3200 5100 50  0001 C CNN
F 3 "" H 3200 5100 50  0001 C CNN
	1    3200 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4700 3200 4700
Wire Wire Line
	3000 5100 3200 5100
$EndSCHEMATC
