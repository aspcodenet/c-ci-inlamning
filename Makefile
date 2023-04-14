PROG=programmet.exe
CC=gcc
CFLAGS=-g -Wall -Werror
OBJ=shapes.o main.o calculator.o
DEPS=shapes.h calculator.h

$(PROG): $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)
