/*
 * Using PWM to vary the brightness of an led
 *
 */
#include <avr/io.h>
#include <util/delay.h>

void pwm_init()
{
        TCCR0 |= (1 << WGM00)|(1 << COM01)|(1 << WGM01)|(1 << CS00);
        DDRB |= (1 << PB3);
}

int main(void)
{
        uint8_t brightness;
        pwm_init();

        while (1) {
                for (brightness = 0; brightness < 255; ++brightness) {
                        OCR0 = brightness;
                        _delay_ms(10);
                }

                for (brightness = 255; brightness > 0; --brightness) {
                        OCR0 = brightness;
                        _delay_ms(10);
                }
        }
}
