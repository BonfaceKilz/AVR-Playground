/*
 * A simple program that demos led blinking
 */

#include <avr/io.h>
#include <util/delay.h>

#define F_CPU 1000000UL
#define LED PD6
#define output_low(port, pin) port &= ~(1<<pin)
#define output_high(port, pin) port |= (1<<pin)
#define set_input(portdir, pin) portdir &= ~(1<<pin)
#define set_output(portdir, pin) portdir |= (1<<pin)

int main(void)
{
        set_output(DDRD, LED);

        while(1){
                output_high(PORTD, LED);
                _delay_ms(200);

                output_low(PORTD, LED);
                _delay_ms(200);
        }
}
