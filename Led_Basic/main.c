/*
 * File Name	: main.c
 * Title 		: Basic LEDON Program
 * Created on	: Mar 18, 2016
 * Author		: root
 * Notes		: Turns on led
 */
#ifndef F_CPU
#define F_CPU 1000000UL
#endif

#include <avr/io.h>

int main(void)
{

	DDRC=0xff;

	while(1){
		PORTC|=(0xff);
	}

	return(0);

}
