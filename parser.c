#include "parser.h"
#include "lexer.h"
#include "vec.h"
#include <stdio.h>

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
//   LineExpr,
//   // ApplyExpr,
//   // BlockExpr,
// };
//
// enum tstat {
//   TypeStat,
//   LetStat,
//   TopExprStat,
//   // FunStat,
//   // EnumStat,
// };

void print_expr(Expr expr) {
  switch (expr.type) {
  case NumExpr:
    printf("Num(%llu)", expr.num);
    break;
  case FloatExpr:
    printf("Flt(%f)", expr.flt);
    break;
  case CharExpr:
    printf("Ch(%c)", expr.ch);
    break;
  case BoolExpr:
    printf("Bool(%s)", expr.ch ? "true" : "false");
    break;
  case StrExpr:
    printf("Str(%llu:%llu)", expr.str.left, expr.str.right);
    break;
  case IdExpr:
    printf("Id(%llu:%llu)", expr.str.left, expr.str.right);
    break;
  case AddExpr:
    printf("Add(");
    print_expr(expr.exprs[0]);
    printf(",");
    print_expr(expr.exprs[1]);
    printf(")");
    break;
  case SubExpr:
    printf("Sub(");
    print_expr(expr.exprs[0]);
    printf(",");
    print_expr(expr.exprs[1]);
    printf(")");
    break;
  case MultExpr:
    printf("Mult(");
    print_expr(expr.exprs[0]);
    printf(",");
    print_expr(expr.exprs[1]);
    printf(")");
    break;
  case DivExpr:
    printf("Div(");
    print_expr(expr.exprs[0]);
    printf(",");
    print_expr(expr.exprs[1]);
    printf(")");
    break;
  case IfExpr:
    printf("If(");
    print_expr(expr.exprs[0]);
    printf(",");
    print_expr(expr.exprs[1]);
    printf(",");
    print_expr(expr.exprs[2]);
    printf(")");
    break;
  case LineExpr:
    printf("Line(");
    for (u64 i = 0; i < vec_len(expr.exprs); i++) {
      print_expr(expr.exprs[i]);
      if (i < vec_len(expr.exprs) - 1) {
        printf(",");
      }
    }
    printf(")");
    break;
  case LineIdExpr:
    printf("Line(");
    for (u64 i = 0; i < vec_len(expr.exprs); i++) {
      print_expr(expr.exprs[i]);
      if (i < vec_len(expr.exprs) - 1) {
        printf(",");
      }
    }
    printf(")");
    break;
  case BlockExpr:
    printf("Block(");
    for (u64 i = 0; i < vec_len(expr.exprs); i++) {
      print_expr(expr.exprs[i]);
      if (i < vec_len(expr.exprs) - 1) {
        printf(",");
      }
    }
    printf(")");
    break;
  case NoExpr:
    break;
  }
}

inline void skip(Parser *parser) { parser->pt++; }

inline Lexeme prev(Parser *parser) { return parser->lexems[parser->pt - 1]; }
inline Lexeme curr(Parser *parser) { return parser->lexems[parser->pt]; }
inline Lexeme next(Parser *parser) { return parser->lexems[parser->pt + 1]; }

inline bool is(Parser *parser, const enum lex type) {
  return curr(parser).type == type;
}

inline bool match(Parser *parser, const enum lex type) {
  if (curr(parser).type == type) {
    skip(parser);
    return true;
  }
  return false;
}

Expr id(Parser *parser) {
  if (match(parser, IdTok)) {
    return (Expr){.type = IdExpr, .str = prev(parser).str};
  } else {
    // ERR
    return (Expr){0};
  }
}

Expr block(Parser *parser);

Expr if_expr(Parser *parser) {
  Expr t = block(parser);
  if (match(parser, ThenTok)) {
    Expr e1 = block(parser);
    if (match(parser, ElseTok)) {
      Expr e2 = block(parser);
      Expr *vec = vec_create();
      vec_push(&vec, t);
      vec_push(&vec, e1);
      vec_push(&vec, e2);
      return (Expr){.type = IfExpr, .exprs = vec};
    }
    // ERR
  }
  // ERR
  return (Expr){0};
}

Expr unit(Parser *parser) {
  skip(parser);
  switch (prev(parser).type) {
  case NumTok:
    return (Expr){.type = NumExpr, .num = prev(parser).num};
  case FloatTok:
    return (Expr){.type = FloatExpr, .flt = prev(parser).flt};
  case ChrTok:
    return (Expr){.type = CharExpr, .ch = prev(parser).ch};
  case TrueTok:
    return (Expr){.type = BoolExpr, .ch = 1};
  case FalseTok:
    return (Expr){.type = BoolExpr, .ch = 0};
  case StrTok:
    return (Expr){.type = StrExpr, .str = prev(parser).str};
  case IdTok:
    return (Expr){.type = IdExpr, .str = prev(parser).str};
  case LParenTok: {
    Expr e = block(parser);
    if (match(parser, RParenTok)) {
      return e;
    }
  }
  case IfTok:
    return if_expr(parser);
  default:
    // ERR
    return (Expr){0};
  }
}

Expr unary(Parser *parser) {
  if (match(parser, MinusTok)) {
    Expr u = unit(parser);
    if (u.type == NumExpr) {
      u.num = -u.num;
    }
    if (u.type == FloatExpr) {
      u.flt = -u.flt;
    }
    return u;
  }
  return unit(parser);
}

Expr factor(Parser *parser) { return unary(parser); }

Expr term(Parser *parser) {
  Expr e1 = factor(parser);
  if (match(parser, StarTok)) {
    Expr e2 = term(parser);
    Expr *vec = vec_create();
    vec_push(&vec, e1);
    vec_push(&vec, e2);
    return (Expr){.type = MultExpr, .exprs = vec};
  } else if (match(parser, DivTok)) {
    Expr e2 = term(parser);
    Expr *vec = vec_create();
    vec_push(&vec, e1);
    vec_push(&vec, e2);
    return (Expr){.type = DivExpr, .exprs = vec};
  }
  return e1;
}

Expr expr(Parser *parser) {
  Expr e1 = term(parser);
  if (match(parser, PlusTok)) {
    Expr e2 = expr(parser);
    Expr *vec = vec_create();
    vec_push(&vec, e1);
    vec_push(&vec, e2);
    return (Expr){.type = AddExpr, .exprs = vec};
  } else if (match(parser, MinusTok)) {
    Expr e2 = expr(parser);
    Expr *vec = vec_create();
    vec_push(&vec, e1);
    vec_push(&vec, e2);
    return (Expr){.type = SubExpr, .exprs = vec};
  }
  return e1;
}

Expr line(Parser *parser) {
  Expr e1 = expr(parser);
  if (match(parser, CommaTok)) {
    Expr e2 = expr(parser);
    Expr *vec = vec_create();
    vec_push(&vec, e1);
    vec_push(&vec, e2);
    while (match(parser, CommaTok)) {
      vec_push(&vec, expr(parser));
    }
    return (Expr){.type = LineExpr, .exprs = vec};
  }
  return e1;
}

Expr line_id(Parser *parser) {
  Expr i1 = id(parser);
  if (match(parser, CommaTok)) {
    Expr i2 = id(parser);
    Expr *vec = vec_create();
    vec_push(&vec, i1);
    vec_push(&vec, i2);
    while (match(parser, CommaTok)) {
      vec_push(&vec, id(parser));
    }
    return (Expr){.type = LineIdExpr, .exprs = vec};
  }
  return i1;
}

Expr block(Parser *parser) {
  if (match(parser, LBrackTok)) {
    Expr *vec = vec_create();
    while (!match(parser, RBrackTok)) {
      match(parser, SemiColonTok);
      vec_push(&vec, line(parser));
    }
    return (Expr){.type = BlockExpr, .exprs = vec};
  }
  return line(parser);
}

void type(Parser *parser) {
  skip(parser);
  Expr i = line_id(parser);
  if (match(parser, EqTok)) {
    Expr e = block(parser);
    Stat *stat = vec_push_get(&parser->ast);
    if (i.type == IdExpr) {
      stat->type = TypeStat;
      stat->let = (LetS){.name = i.str, .expr = e};
    } else {
      Expr *vec = vec_create();
      vec_push(&vec, i);
      vec_push(&vec, e);
      stat->type = TypeLineStat;
      stat->any = vec;
    }
  } else {
    // ERR
  }
}

void let(Parser *parser) {
  skip(parser);
  Expr i = line_id(parser);
  if (match(parser, EqTok)) {
    Expr e = block(parser);
    Stat *stat = vec_push_get(&parser->ast);
    if (i.type == IdExpr) {
      stat->type = LetStat;
      stat->let = (LetS){.name = i.str, .expr = e};
    } else {
      Expr *vec = vec_create();
      vec_push(&vec, i);
      vec_push(&vec, e);
      stat->type = LetLineStat;
      stat->any = vec;
    }
  } else {
    // ERR
  }
}

void fun(Parser *parser) {
  skip(parser);
  Expr i = id(parser);
  Expr in = line_id(parser);
  Expr e = block(parser);
  Stat *stat = vec_push_get(&parser->ast);
  stat->type = FunStat;
  stat->fun = (FunS){.name = i.str, .ids = in, .expr = e};
}

void top(Parser *parser) {
  Expr e = block(parser);
  Stat *stat = vec_push_get(&parser->ast);
  stat->type = TopExprStat;
  stat->top = (TopS){.expr = e};
}

void stats(Parser *parser) {
  while (parser->pt < vec_len((const Vec)parser->lexems)) {
    switch (curr(parser).type) {
    case UnknownChar:
    case ImproperMutable:
    case ImproperNumber:
    case UnfinishedStr:
    case UnfinishedChar:
    case Success:
      // ERR
      skip(parser);
      return;

    case FunTok:
      fun(parser);
      break;

    case LetTok:
      let(parser);
      break;

    case TypeTok:
      type(parser);
      break;

    case SemiColonTok:
      skip(parser);
      break;

    default:
      top(parser);
      break;
    }
  }
}

Stat *parse(const i8 *input, const Lexeme *lexems) {
  Parser parser = {.input = input, .lexems = lexems, .ast = vec_create()};
  stats(&parser);
  return parser.ast;
}
