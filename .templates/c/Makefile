#Fixme: write

CC=gcc
CFLAGS=  -Wall -Wextra -std=c99
LNFLAGS=
SRC=$(wildcard src/*.c)
OBJ=$(SRC:.c=.o)
EXE=#{PROJNAME}

all: $(OBJ)
	$(CC) $(OBJ) $(CFLAGS) $(LNFLAGS) -o$(EXE)

main.o: src/main.c

.c.o:
	@echo "   cc $<"
	@${CC} -c ${CFLAGS} $< -o $@
	
todo:
	@find src -type f | xargs grep -n -i "TODO"
	@find src -type f | xargs grep -n -i "FIXME"

loc: 
	@wc -l src/*.[ch]

# requires sloccount
sloc:
	@sloccount src lib | grep '(SLOC)'


.PHONY= loc sloc todo
