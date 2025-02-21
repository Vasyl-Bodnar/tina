EXE=tina
CC=cc
DEBUG=-g
SILENCE=-Wno-language-extension-token -Wno-incompatible-pointer-types-discards-qualifiers
CFLAGS=$(DEBUG) -O2 -march=native -Wall -Wextra -pedantic $(SILENCE)
SRCS=vec.c tina.c lexer.c
OBJS=$(SRCS:.c=.o)

all: $(EXE)

$(EXE): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS)

$(OBJS): vec.h

clean:
	rm -f $(OBJS) $(EXE)
