PROG=programmet.exe
CFLAGS=-Wall -Werror -g
CC=gcc

$(PROG): main.o calculator.o shapes.o
	$(CC) $(CFLAGS) -o $(PROG)  main.o calculator.o shapes.o

%.o: %.c
	$(CC) $(CFLAGS) -c $<

clean:
	@del /q $(PROG)
	@del /q *.o

.PHONY: clean	