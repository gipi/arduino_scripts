# hw used: arduino 2009 atmega328
#
CURRENT_DIR=$(shell pwd)
TOPDIR=$(CURRENT_DIR)/../..

ARDUINO_SKETCHBOOK = $(CURRENT_DIR)
ARDUINO_DIR = /usr/share/arduino
ARDMK_DIR   = $(TOPDIR)/arduino-mk

TARGET = $(shell basename $(PWD))

MCU          = atmega328p
F_CPU        = 16000000
ARDUINO_PORT = /dev/ttyACM0

AVR_TOOLS_DIR = /usr
AVRDUDE_ARD_PROGRAMMER = arduino
AVRDUDE_ARD_BAUDRATE   = 115200
#AVRDUDE_ARD_EXTRAOPTS  = -F

include $(ARDMK_DIR)/arduino-mk/Arduino.mk
