CC=gcc
CFLAGS=-Os -Wall -Wextra -static
MB_SRCS:=$(wildcard exemples/*)

all: $(MB_SRCS)

$(MB_SRCS): interpreter
	./malbolge $@

interpreter: malbolge.c
	$(CC) -o malbolge malbolge.c 

exemples: $(MB_SRCS)

install: interpreter
	cp malbolge /usr/local/bin/malbolge

clean:
	rm malbolge
