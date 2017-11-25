CROSS_COMPILE := /usr/bin/arm-linux-gnueabi-
CC := $(CROSS_COMPILE)gcc

all:
	$(CC) test.c -o test
