TARGET = jenny

CC ?= gcc
SHELL = /bin/sh
CFLAGS = -std=c99 -Wall -pedantic
CLEANFILES = $(TARGET) tests/jenny_test.log_ tests/jenny_err.log_ tests/jenny_err.tmp tags

all: $(TARGET)

$(TARGET): jenny.c
	$(CC) $(CFLAGS) $(LDFLAGS) jenny.c -o $@

test: $(TARGET)
	$(SHELL) -v tests/jenny_test.sh 2>&1 > tests/jenny_test.log_
	diff -u tests/jenny_test.log tests/jenny_test.log_
	$(SHELL) -v tests/jenny_err.sh 2>&1 > tests/jenny_err.log_
	diff -u tests/jenny_err.log tests/jenny_err.log_

tags:
	rm -f tags
	find . -name '*.[hcS]' -print | xargs ctags -a

clean:
	@rm -f $(CLEANFILES)

.PHONY: clean tags
