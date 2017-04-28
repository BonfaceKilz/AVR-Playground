#include <avr/io.h>
#include <avr/interrupt.h>

int main()
{
        OCR2 = 62;
        TCCR2 |= (1 << WGM21);
        TIMSK |= (1 << OCIE2);
        TCCR2 |= (1 << CS21);
        sei();
        while (1) {
                // working time
        }
}

ISR (TIMER0_COMP_vect)
{
        // action to be done every 250us
}
