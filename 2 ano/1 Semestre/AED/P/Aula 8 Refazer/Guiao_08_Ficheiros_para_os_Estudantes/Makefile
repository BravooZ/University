# To compile all programs, run:
#   make
#
# JMR 2021, JMadeira 2023

# Options for the C compiler.
CFLAGS += -g -Wall -Wextra -std=c99
LDFLAGS += -lm

TARGETS = Tests

all: $(TARGETS)

Date.o: Date.c Date.h

Person.o: Person.c Person.h Date.h

PersonSet.o: PersonSet.c PersonSet.h Person.h Date.h

Tests.o: Tests.c Person.h Date.h PersonSet.h

Tests: Tests.o Person.o Date.o PersonSet.o
    $(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

# make tst    # to run program twice and log outputs
tst: tst-12.txt tst-14.txt

tst-%.txt: Tests
    valgrind --log-fd=1 ./Tests $* > $@

clean:
    rm -f *.o
    rm -f $(TARGETS)
    rm -f tst-*.txt