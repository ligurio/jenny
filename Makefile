TARGET = jenny

CC ?= gcc
SHELL = /bin/sh
CFLAGS = -std=c99 -Wall -pedantic
CLEANFILES = $(TARGET)

all: $(TARGET)

$(TARGET): jenny.c
	$(CC) $(CFLAGS) $(LDFLAGS) jenny.c -o $@

test: $(TARGET)
	$(SHELL) ./jenny_test.sh

tags:
	rm -f tags
	find . -name '*.[hcS]' -print | xargs ctags -a

clean:
	@rm -f $(TARGET) $(CLEANFILES)

.PHONY: clean tags
