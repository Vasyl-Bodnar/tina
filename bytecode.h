#ifndef BYTECODE_H
#define BYTECODE_H

#include "sizes.h"

enum opcode {
  NOP = 0,
  ADD,
  SUB,
};

typedef u64 Reg;
typedef u64 Val; // Register or Const

typedef struct instr {
  enum opcode op;
  Reg dest;
  Val src;
  Val src2;
} Instr;

#endif // BYTECODE_H
