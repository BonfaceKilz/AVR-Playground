f/*
  * Demo: Timer0 Demo
  * A simple LED flasher
  * An lED that flashes every 6ms
  * at a clock frequency of 32 kHz
  * Not practical but this is for
  * demo purposes only
  */

#include <avr/io.h>

#define LED 0

void timer0_init()
{
        TCCR0 |= (1 << CS00);
        TCNT0 = 0;
}

int main(void)
{
        DDRC |= (1 << LED);
        timer0_init();
        while (1) {
                if (TCNT0 >= 191) {
                        PORTC ^= (1 << LED);
                        TCNT0 = 0;
                }
        }
}
