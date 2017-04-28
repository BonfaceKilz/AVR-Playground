#define F_CPU 4000000UL
#include "avr/io.h"
#include <util/delay.h>

#define LED 2

int main()
{
        DDRC |= (1 << LED);
        while (1) {
                PORTC ^= (1 << LED);
                _delay_ms(1000);
        }
        return 0;
}
