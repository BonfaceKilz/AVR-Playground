/*
 * Motor Control using the Atmega32
 * Use the L293D to drive the motor
 *
 * Assume the following truth table:
 * M1-A  | M1-B  | Result
 *----------------------------------------
 * 1     | 0     | M2 moves clockwise
 * 0     | 1     | M2 moves counter-clockwise
 * 0     | 0     | M2 stops
 * 0     | 0     | M2 stops
 *
 */

#include <avr/io.h>
#include <util/delay.h>

int main(void)
{
        DDRC = 0x0F;

        while (1) {
                PORTC |= (1 << PC0)|(1 << PC2);
                PORTC &= ~(1 << PC1) | ~(1 << PC3);
                _delay_ms(500);

                PORTC &= ~(1 << PC0) | ~(1 << PC2);
                PORTC |= (1 << PC1)|(1 << PC3);
                _delay_ms(500);
        }
}
