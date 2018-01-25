TARGET = jenny

CC ?= gcc
SHELL = /bin/sh

SRC += $(wildcard *.c)
OBJ := $(SRC:.c=.o)
CFLAGS = -std=c99 -Wall -pedantic
CLEANFILES = $(TARGET)

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) $< -o $@

test:

tags:
	rm -f tags
	find . -name '*.[hcS]' -print | xargs ctags -a

clean:
	@rm -f $(TARGET) $(CLEANFILES)

.PHONY: clean tags
