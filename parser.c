#include "parser.h"
#include "vec.h"

// enum texpr {
//   NumExpr,
//   FloatExpr,
//   CharExpr,
//   StrExpr,
//   IdExpr,
//   AddExpr,
//   SubExpr,
//   MultExpr,
//   DivExpr,
//   IfExpr,
//   // ApplyExpr,
//   // BlockExpr,
//   // LineExpr,
// };
//
// enum tstat {
//   LetStat,
//   TopExprStat,
//   // FunStat,
//   // EnumStat,
//   // TypeStat,
// };
inline void skip(Parser *parser) { parser->pt++; }

bool match(Parser *parser, const enum lex type) {
  return parser->lexems[parser->pt].type == type;
}

void expr(Parser *parser) {}

void let(Parser *parser) { skip(parser); }

void statement(Parser *parser) {
  while (parser->pt < vec_len(parser->lexems)) {
    switch (parser->lexems[parser->pt].type) {
    case UnknownChar:
    case ImproperMutable:
    case ImproperNumber:
    case UnfinishedStr:
    case UnfinishedChar:
    case Success:
      // ERR
      return;

    case LetTok:
      let(parser);
      break;

    default:
      break;
    }
  }
}

Stat *parse(const i8 *input, const Lexeme *lexems) {
  Parser parser = {.input = input, .lexems = lexems, .ast = vec_create()};
  statement(&parser);
  return parser.ast;
}
