#!/bin/make

start: dd
	bochs -q

compile:
	nasm main.asm -o main.bin

dd: compile
	dd if=main.bin of=master.img bs=512 count=1 conv=notrunc
