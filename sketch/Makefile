# hw used: arduino 2009 atmega328

ARDUINO_DIR = /usr/share/arduino

TARGET = $(shell basename $(PWD))

MCU          = atmega328p
F_CPU        = 16000000
ARDUINO_PORT = /dev/ttyACM0

AVRDUDE_ARD_PROGRAMMER = arduino
AVRDUDE_ARD_BAUDRATE   = 115200
#AVRDUDE_ARD_EXTRAOPTS  = -F

include /usr/share/arduino/Arduino.mk


prova:
	$(REMOVE) -rf build-cli

