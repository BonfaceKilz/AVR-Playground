/*
 * Demo: CTC mode
 * Clock: 16 MHz
 * Prescaler: 64
 * no interrupts
 */

#include <avr/io.h>

#define LED 0

void timer1_init()
{
        TCCR1B |= (1 << WGM12) | (1 << CS11) | (1 << CS10);
        TCNT1 = 0;
        OCR1A = 24999;
}

int main(void)
{
        DDRC |= (1 << 0);
        timer1_init();
        while (1) {
                if (TIFR & (1 << OCF1A)){
                        PORTC ^= (1 << LED);
                }

                TIFR |= (1 << OCF1A);
        }
}
