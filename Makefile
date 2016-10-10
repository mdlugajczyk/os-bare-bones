CC=i686-elf-gcc
AS=i686-elf-as
QEMU=/usr/local/Cellar/qemu/2.7.0/bin/qemu-system-i386
all: boot kernel
	$(CC) -T linker.ld -o myos.bin -ffreestanding -O2 -nostdlib boot.o kernel.o -lgcc
boot: boot.s
	$(AS) boot.s -o boot.o
kernel: kernel.c
	$(CC) -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
clean:
	rm -rf *.bin *.o
run: all
	$(QEMU) -kernel myos.bin
