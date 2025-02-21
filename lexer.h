#ifndef LEXER_H
#define LEXER_H

#include "sizes.h"
#include <stdbool.h>

enum lex {
  UnknownChar = -5,
  ImproperMutable = -4,
  ImproperNumber = -3,
  UnfinishedStr = -2,
  UnfinishedChar = -1,
  Success = 0,

  SpanTok,
  DirvTok,
  IdTok,
  ModTok,
  PubTok,
  SigTok,
  FunTok,
  LetTok,
  TypeTok,
  TraitTok,
  EnumTok,
  DeferTok,
  IfTok,
  ThenTok,
  ElseTok,
  TrueTok,
  FalseTok,
  WhileTok,
  ForTok,
  StrTok,
  ChrTok,
  MutTok,
  LambTok,
  DotTok,
  PlusTok,
  MinusTok,
  StarTok,
  DivTok,
  EqTok,
  GtTok,
  GteTok,
  LtTok,
  LteTok,
  ColonTok,
  SemiColonTok,
  CommaTok,
  LBrackTok,
  RBrackTok,
  LSqBrackTok,
  RSqBrackTok,
  LParenTok,
  RParenTok,
  RArrowTok,
  NumTok,
  FloatTok,
};

typedef struct ref_str {
  u64 left;
  u64 right;
} RefStr;

typedef struct lexeme {
  union {
    RefStr str;
    i8 ch;
    u64 num;
    f64 flt;
  };
  u64 row;
  u64 col;
  enum lex type;
} Lexeme;

typedef struct lexer {
  const i8 *input;
  u64 len;
  u64 col;
  u64 row;
  u64 pt;
  Lexeme *lexems;
  bool err;
} Lexer;

Lexeme *lex(const i8 *input, const u64 len);
const i8 *get_lex_str(const enum lex type);
const i8 *get_err_str(const enum lex err);

#endif // LEXER_H
