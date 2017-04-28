/*
 * Set up timer1 for 1ms at 16Mhz clock cycle
 *
 */

#include <avr/io.h>
#include <avr/interrupt.h>

int main()
{
        TIMSK |= (1 << TOIE0);
        sei();
        TCCR0 |= (1 << CS01) | (1 << CS00);
        while (1) {
                //main loop
        }
}

ISR (TIMER0_OVF_vect)
{
        TCNT0 += 6;
}
