/*
 * Demo: Timer2 demo
 * Flashing an LED every 50 ms
 * at a clock frequency of 0.5 Hz
 * using an external crystal of 16 MHz
 */

#include <avr/io.h>
#include <avr/interrupt.h>

volatile uint8_t tot_overflow;

void timer2_init()
{
        TCCR2 |= (1 << CS22)|(1 << CS21);
        TCNT2 = 0;
        TIMSK |= (1 << TOIE2);
        sei();
        tot_overflow = 0;
}

ISR(TIMER2_OVF_vect)
{
        tot_overflow++;
}

int main(void)
{
        DDRC |= (1 << 0);
        timer2_init();
        while (1) {
                if (tot_overflow >= 12) {
                        if (TCNT2 >= 53) {
                                PORTC ^= (1 << 0);
                                TCNT2 = 0;
                                tot_overflow = 0;
                        }
                }
        }
}
