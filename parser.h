#ifndef PARSER_H
#define PARSER_H

#include "lexer.h"
#include "sizes.h"

enum texpr {
  NumExpr,
  FloatExpr,
  CharExpr,
  StrExpr,
  IdExpr,
  AddExpr,
  SubExpr,
  MultExpr,
  DivExpr,
  IfExpr,
  // ApplyExpr,
  // BlockExpr,
  // LineExpr,
};

enum tstat {
  LetStat,
  TopExprStat,
  // FunStat,
  // EnumStat,
  // TypeStat,
};

typedef struct bin_op {
  struct expr *left;
  struct expr *right;
} BinaryOp;

typedef struct expr {
  union {
    RefStr str;
    BinaryOp *bin_op;
    struct expr *exprs;
    i8 ch;
    u64 num;
    f64 flt;
  };
  enum texpr type;
} Expr;

typedef struct stat {
  union {
    struct {
      RefStr name;
      Expr expr;
    } let;
    struct {
      Expr expr;
    } top;
  };
  enum tstat type;
} Stat;

typedef struct parser {
  const i8 *input;
  const Lexeme *lexems;
  u64 pt;
  Stat *ast;
} Parser;

Stat *parse(const i8 *input, const Lexeme *lexems);

#endif // PARSER_H
