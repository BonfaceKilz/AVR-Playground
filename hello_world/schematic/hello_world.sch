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
L R R?
U 1 1 5866B4C0
P 5700 4800
F 0 "R?" H 5780 4800 50  0000 C CNN
F 1 "1k" V 5700 4800 50  0000 C CNN
F 2 "" V 5630 4800 50  0000 C CNN
F 3 "" H 5700 4800 50  0000 C CNN
	1    5700 4800
	0    1    1    0   
$EndComp
$Comp
L ATMEGA328P-P IC?
U 1 1 5866BA6A
P 4250 3700
F 0 "IC?" H 3500 4950 50  0000 L BNN
F 1 "ATMEGA328P-P" H 4650 2300 50  0000 L BNN
F 2 "DIL28" H 4250 3700 50  0000 C CIN
F 3 "" H 4250 3700 50  0000 C CNN
	1    4250 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 4800 5250 4800
$Comp
L Earth #PWR?
U 1 1 5866BD2A
P 6550 4900
F 0 "#PWR?" H 6550 4650 50  0001 C CNN
F 1 "Earth" H 6550 4750 50  0001 C CNN
F 2 "" H 6550 4900 50  0000 C CNN
F 3 "" H 6550 4900 50  0000 C CNN
	1    6550 4900
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5866BD44
P 6150 4800
F 0 "D?" H 6150 4900 50  0000 C CNN
F 1 "LED" H 6150 4700 50  0000 C CNN
F 2 "" H 6150 4800 50  0000 C CNN
F 3 "" H 6150 4800 50  0000 C CNN
	1    6150 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	5850 4800 6000 4800
Wire Wire Line
	6300 4800 6550 4800
Wire Wire Line
	6550 4800 6550 4900
$EndSCHEMATC
