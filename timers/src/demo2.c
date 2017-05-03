/*
 * Demo: Timer0 demo
 * Flashing an LED every 8 ms
 * at a clock frequency of 16 MHz
 * using an external crystal
 * Not practical; for demo only
 */

#include <avr/io.h>
#define LED 0

void timer0_init()
{
        TCCR0 |= (1 << CS02) | (1 << CS00);
        TCNT0 = 0;
}

int main(void)
{
        DDRC |= (1 << LED);
        timer0_init();

        while (1) {
                if (TCNT0 >= 1024) {
                        PORTC ^= (1 << LED);
                        TCNT0 = 0;
                }
        }
}
