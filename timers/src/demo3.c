/*
 * Demo: Timer0 demo
 * Flashing an LED every 50 ms
 * at a clock frequency of 16 MHz
 * using an external crystal
 * We use interrupts now :)
 */

#include <avr/io.h>
#include <avr/interrupt.h>

#define LED 0

volatile uint8_t tot_overflow;

ISR(TIMER0_OVF_vect)
{
        tot_overflow++;
}


void timer0_init()
{
        TCCR0 |= (1 << CS02);
        TCNT0 = 0;
        TIMSK |= (1 << TOIE0);
        sei();
        tot_overflow = 0;
}

int main(void)
{
        DDRC |= ( 1 << LED);
        timer0_init();

        while (1) {
                if (tot_overflow >= 12) {
                        if (TCNT0 >- 53) {
                                PORTC ^= (1 << LED);
                                TCNT0 = 0;
                                tot_overflow = 0;
                        }
                }
        }
}
