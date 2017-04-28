/*
 * A simple demo on how buttons are interfaced with LEDS
 * Debounce has not been factored in
 *
 */

#include <avr/io.h>
#include <util/delay.h>

#define LED 5
#define BUTTON 3
volatile int state = 0;

void init()
{
        DDRC |= (1 << LED);
        DDRC &= ~(1 << BUTTON);
        PORTC |= (1 << LED);
}

int buttonpressed()
{
        return (PINC & (1 << BUTTON));
}

int main()
{
        init();
        while (1) {
                if (buttonpressed()){
                        PORTC ^= (1 << LED);
                        _delay_ms(2000);
                }
        }
}
