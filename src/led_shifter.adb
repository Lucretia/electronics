with AVR; use AVR;
with AVR.MCU;
with AVR.Real_Time.Clock;
pragma Unreferenced (AVR.Real_Time.Clock);

procedure LED_Shifter is
begin
   --  Set the Digital pins 0 and 13 as output.
   MCU.DDRD_Bits (MCU.DDD0_Bit) := DD_Output;
   MCU.DDRB_Bits (MCU.DDD5_Bit) := DD_Output;

   --  Turn on the LED on pin 0 and the LED on pin 13 off.
   MCU.PORTD_Bits (MCU.PORTD0_Bit) := High;
   MCU.PORTB_Bits (MCU.PORTB5_Bit) := Low;

   delay 1.0;

   --  Switch the LEDs.
   MCU.PORTD_Bits (MCU.PORTD0_Bit) := Low;
   MCU.PORTB_Bits (MCU.PORTB5_Bit) := High;

   delay 2.0;

   --  Switch the LEDs.
   MCU.PORTD_Bits (MCU.PORTD0_Bit) := High;
   MCU.PORTB_Bits (MCU.PORTB5_Bit) := Low;

   delay 1.0;

   --  Switch the LEDs.
   MCU.PORTD_Bits (MCU.PORTD0_Bit) := Low;
   MCU.PORTB_Bits (MCU.PORTB5_Bit) := High;
end LED_Shifter;
