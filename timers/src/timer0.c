/*
 * This simple code snippet sets up timer0
 * for 1ms at 16Mhz clock cycle
 *
 */

#include <avr/io.h>

int main()
{
        while (1) {
                TCCR0 |= ( 1 << CS01) | (1 << CS00);
                while (TIFR & ( 1 << TOV0) > 0) {

                }
                TIFR &= ~(1 << TOV0);
        }
        return 0;
}
