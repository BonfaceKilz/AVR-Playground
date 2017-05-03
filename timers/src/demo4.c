/*
 * Demo: Timer1 demo
 * Flashing an LED every 2s
 * at a clock frequency of 0.5 Hz
 * using an external crystal of 16 MHz
 */

#include <avr/io.h>
#include <avr/interrupt.h>

#define LED 0

volatile uint8_t tot_overflow;

void timer1_init()
{
        TCCR1B |= (1 << CS11);
        TCNT1 = 0;
        TIMSK |= (1 << TOIE1);
        sei();
        tot_overflow = 0;
}

ISR(TIMER1_OVF_vect)
{
        tot_overflow++;
        if (tot_overflow >= 61) {
                PORTC ^= (1 << LED);
                tot_overflow = 0;
        }
}

int main(void)
{
        DDRC |= (1 << LED);
        timer1_init();
        while (1) {

        }
}
