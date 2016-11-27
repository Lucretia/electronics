.PHONY: gen/led_shifter.hex gen/led_shifter.elf

all: gen/led_shifter.elf

gen/led_shifter.elf: ../../src/led_shifter.adb
	avr-gnatmake -P electronics.gpr -XBOARD=arduino_uno

gen/led_shifter.hex: gen/led_shifter.elf
	avr-objcopy -O ihex gen/led_shifter.elf gen/led_shifter.hex

led_shifter: gen/led_shifter.hex
	avrdude -U flash:w:./gen/led_shifter.hex:i -v -p atmega328p -b 115200 -c arduino -P /dev/ttyACM0

clean:
	avr-gnatclean -P electronics.gpr -XBOARD=arduino_uno
	rm gen/*.hex
