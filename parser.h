#ifndef PARSER_H
#define PARSER_H

#include "lexer.h"
#include "sizes.h"

enum texpr {
  NumExpr,
  FloatExpr,
  CharExpr,
  StrExpr,
  BoolExpr,
  IdExpr,
  AddExpr,
  SubExpr,
  MultExpr,
  DivExpr,
  IfExpr,
  NoExpr,
  LineExpr,
  LineIdExpr,
  // ApplyExpr,
  // BlockExpr,
};

enum tstat {
  TypeStat,
  TypeLineStat,
  LetStat,
  LetLineStat,
  TopExprStat,
  // FunStat,
  // EnumStat,
};

typedef struct bin_op {
  struct expr *left;
  struct expr *right;
} BinaryOp;

typedef struct expr {
  union {
    RefStr str;
    BinaryOp bin_op;
    struct expr *exprs;
    i8 ch;
    u64 num;
    f64 flt;
  };
  enum texpr type;
} Expr;

typedef struct let_s {
  RefStr name;
  Expr expr;
} LetS;

typedef struct top_s {
  Expr expr;
} TopS;

typedef struct stat {
  union {
    LetS let;
    TopS top;
    Expr *any;
  };
  enum tstat type;
} Stat;

typedef struct parser {
  const i8 *input;
  const Lexeme *lexems;
  u64 pt;
  Stat *ast;
} Parser;

void print_expr(Expr expr);
Stat *parse(const i8 *input, const Lexeme *lexems);

#endif // PARSER_H
