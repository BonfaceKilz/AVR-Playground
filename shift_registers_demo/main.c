
#include <avr/io.h>
#include <util/delay.h>

#define DS_PORT PORTC
#define DS_PIN 0
#define ST_CP_PORT PORTC
#define ST_CP_PIN 1
#define SH_CP_PORT PORTC
#define SH_CP_PIN 2

#define DS_low() DS_PORT&=~_BV(DS_PIN)
#define DS_high() DS_PORT|=_BV(DS_PIN)
#define ST_CP_low() ST_CP_PORT&=~_BV(ST_CP_PIN)
#define ST_CP_high() ST_CP_PORT|=_BV(ST_CP_PIN)
#define SH_CP_low() SH_CP_PORT&=~_BV(SH_CP_PIN)
#define SH_CP_high() SH_CP_PORT|=_BV(SH_CP_PIN)

void ioinit(void);
void output_led_state(unsigned char);

int main(void)
{
  ioinit();
  while(1){
    for(int i=7; i>=0; i--){
      output_led_state(_BV(i));
      _delay_ms(1000);
    }

    for(int i=1; i<7; i++){
      output_led_state(_BV(i));
      _delay_ms(1000);
    }
  }
}

void ioinit(void){
  DDRC = 0b00000111;
  PORTC = 0b00000000;
}

void output_led_state(unsigned char __leds_state){
  SH_CP_low();
  ST_CP_low();
  for(int i = 0; i<8; i++){
    if(bit_is_set(__leds_state, i))
      DS_high();
    else
      DS_low();

    SH_CP_high();
    SH_CP_low();
  }
  ST_CP_high();
}
