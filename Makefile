EXE=tina
CC=cc
DEBUG=-g
OPTIMIZE=-Og -march=native
SILENCE=-Wno-language-extension-token -Wno-incompatible-pointer-types-discards-qualifiers
CFLAGS=$(DEBUG) $(OPTIMIZE) -Wall -Wextra -pedantic $(SILENCE)
SRCS=vec.c tina.c lexer.c parser.c
OBJS=$(SRCS:.c=.o)

all: $(EXE)

$(EXE): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS)

$(OBJS): vec.h

clean:
	rm -f $(OBJS) $(EXE)
