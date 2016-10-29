#ifndef __KERNEL_INCLUDE_H
#define __KERNEL_INCLUDE_H 1

#include <stddef.h>

void terminal_initialize();
void terminal_putchar(char c);
void terminal_write(const char *data, size_t size);
void terminal_write_string(const char *data);

#endif
