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
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L 7805 U1
U 1 1 5900CE7D
P 4550 3300
F 0 "U1" H 4700 3104 50  0000 C CNN
F 1 "7805" H 4550 3500 50  0000 C CNN
F 2 "" H 4550 3300 50  0001 C CNN
F 3 "" H 4550 3300 50  0001 C CNN
	1    4550 3300
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5900CED4
P 5500 2900
F 0 "R1" V 5580 2900 50  0000 C CNN
F 1 "1k" V 5500 2900 50  0000 C CNN
F 2 "" V 5430 2900 50  0001 C CNN
F 3 "" H 5500 2900 50  0001 C CNN
	1    5500 2900
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 5900CF1D
P 3850 3800
F 0 "C1" H 3875 3900 50  0000 L CNN
F 1 "100uF/25v" H 3875 3700 50  0000 L CNN
F 2 "" H 3888 3650 50  0001 C CNN
F 3 "" H 3850 3800 50  0001 C CNN
	1    3850 3800
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 5900D05A
P 5500 3750
F 0 "C2" H 5525 3850 50  0000 L CNN
F 1 "100uF/25v" H 5525 3650 50  0000 L CNN
F 2 "" H 5538 3600 50  0001 C CNN
F 3 "" H 5500 3750 50  0001 C CNN
	1    5500 3750
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 5900D0A0
P 6050 2750
F 0 "D1" H 6050 2850 50  0000 C CNN
F 1 "LED" H 6050 2650 50  0000 C CNN
F 2 "" H 6050 2750 50  0001 C CNN
F 3 "" H 6050 2750 50  0001 C CNN
	1    6050 2750
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG1
U 1 1 5900D2BE
P 3900 2350
F 0 "#FLG1" H 3900 2425 50  0001 C CNN
F 1 "PWR_FLAG" H 3900 2500 50  0000 C CNN
F 2 "" H 3900 2350 50  0001 C CNN
F 3 "" H 3900 2350 50  0001 C CNN
	1    3900 2350
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG2
U 1 1 5900D2DF
P 4350 2350
F 0 "#FLG2" H 4350 2425 50  0001 C CNN
F 1 "PWR_FLAG" H 4350 2500 50  0000 C CNN
F 2 "" H 4350 2350 50  0001 C CNN
F 3 "" H 4350 2350 50  0001 C CNN
	1    4350 2350
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR1
U 1 1 5900D2F9
P 3900 2550
F 0 "#PWR1" H 3900 2400 50  0001 C CNN
F 1 "+9V" H 3900 2690 50  0000 C CNN
F 2 "" H 3900 2550 50  0001 C CNN
F 3 "" H 3900 2550 50  0001 C CNN
	1    3900 2550
	1    0    0    1   
$EndComp
$Comp
L GND #PWR2
U 1 1 5900D315
P 4350 2550
F 0 "#PWR2" H 4350 2300 50  0001 C CNN
F 1 "GND" H 4350 2400 50  0000 C CNN
F 2 "" H 4350 2550 50  0001 C CNN
F 3 "" H 4350 2550 50  0001 C CNN
	1    4350 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 5900D340
P 4700 4250
F 0 "#PWR3" H 4700 4000 50  0001 C CNN
F 1 "GND" H 4700 4100 50  0000 C CNN
F 2 "" H 4700 4250 50  0001 C CNN
F 3 "" H 4700 4250 50  0001 C CNN
	1    4700 4250
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02_FEMALE J1
U 1 1 5900DBA8
P 2650 2850
F 0 "J1" H 2650 3050 50  0000 C CNN
F 1 "CONN_01X02_FEMALE" H 2725 2650 50  0000 C CNN
F 2 "" H 2650 2950 50  0001 C CNN
F 3 "" H 2650 2950 50  0001 C CNN
	1    2650 2850
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X02_MALE J2
U 1 1 5900DC09
P 6950 3200
F 0 "J2" H 6950 3375 50  0000 C CNN
F 1 "CONN_01X02_MALE" H 6950 3000 50  0000 C CNN
F 2 "" H 6950 3300 50  0001 C CNN
F 3 "" H 6950 3300 50  0001 C CNN
	1    6950 3200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3900 2350 3900 2550
Wire Wire Line
	4350 2350 4350 2550
Wire Wire Line
	2750 3250 4150 3250
Wire Wire Line
	3850 3250 3850 3650
Wire Wire Line
	3850 3950 3850 4100
Wire Wire Line
	2550 4100 6650 4100
Wire Wire Line
	5500 4100 5500 3900
Wire Wire Line
	4700 4250 4700 4100
Connection ~ 4700 4100
Wire Wire Line
	2750 2950 2750 3250
Connection ~ 3850 3250
Wire Wire Line
	2550 2950 2550 4100
Connection ~ 3850 4100
Wire Wire Line
	4950 3250 5500 3250
Wire Wire Line
	5500 3050 5500 3600
Connection ~ 5500 3250
Wire Wire Line
	5500 2750 5900 2750
Wire Wire Line
	4550 3550 4550 4100
Connection ~ 4550 4100
Wire Wire Line
	6200 2750 6650 2750
Wire Wire Line
	6650 2750 6650 3100
Wire Wire Line
	6650 4100 6650 3300
Connection ~ 5500 4100
$EndSCHEMATC
