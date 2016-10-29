#!/bin/sh
set -e

QUEMU=/usr/local/Cellar/qemu/2.7.0/bin/qemu-system-i386
 
$QUEMU -kernel sysroot/boot/myos.kernel
