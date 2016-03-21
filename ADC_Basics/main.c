/*
 * File Name	: main.c
 * Title 		: Basic LED blinking Program
 * Created on	: Mar 18, 2016
 * Author		: root
 * Notes		: This gets analog input from LDR
 */

#ifndef F_CPU
#define F_CPU 1000000UL
#endif

#include <avr/io.h>

#define PORT_ON(port, pin) port |= (1<<pin)
#define PORT_OFF(port, pin) port &= ~(1<<pin)

int main(void)
{
	unsigned int adc_value;

	//Todo:
	//		Change the ddr of the port for Atmega32
	//		Change the portd
	DDRC=0xff; //Making portA0 to be an output
	PORTC=0x00; //Clearing portA0

	ADCSRA = (1<<ADEN) | (1<<ADPS2) | (1<<ADPS0);
	//ADEN: Set to turn on ADC
	//ADSP: Set to make division factor 32

	ADMUX = 0x02; //0010
	//ADC input channel: Pin2

	while(1)
	{
		ADCSRA |= (1<<ADSC);
		//Wait until conversion completes;
		//ADSC=0 means complete
		while(ADCSRA & (1<<ADSC));
		adc_value=ADCW;

		if(adc_value<512){
			PORT_OFF(PORTD, 6);
			PORT_ON(PORTD, 7);
		}
		else
		{
			PORT_ON(PORTC, 6);
			PORT_OFF(PORTC, 7);
		}
	}

}
