/*
 * Generating a 50 Hz PWM signal
 * having a 45% duty cycle
 *
 * Using PWM to vary the brighness of
 * an LED
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
        uint8_t duty;
        duty = 115;
        pwm_init();
        while (1) {
                OCR0 = duty;
        }
}
