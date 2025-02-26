#include "lexer.h"
#include "parser.h"
#include "vec.h"
#include <stdio.h>
#include <string.h>

void print_lexems(const Lexeme *lexems);

int main(void) {
  const i8 *str = "type x, z = y, g "
                  "let x = if 1 then 2 + 4 - 2 else 10 "
                  "let yz = 5, 123 + 2 * 3; "
                  "fun hello x { x+x; 23 } "
                  "{ (123, 123) + (53, 2); (123, 123) + (53, 2) }";
  Lexeme *lexems = lex(str, strlen(str));

  if ((usize)lexems & 1) {
    lexems = (Lexeme *)((usize)lexems ^ 1);
    printf("Lexer failed with errors:\n");
    for (u64 i = 0; i < vec_len(lexems); i++) {
      if (lexems[i].type < 0) {
        putchar(' ');
        putchar(' ');
        puts(get_err_str(lexems[i].type));
      }
    }
    return 1;
  }

  // print_lexems(lexems);

  Stat *stats = parse(str, lexems);

  for (u64 i = 0; i < vec_len(stats); i++) {
    switch (stats[i].type) {
    case FunStat:
      printf("Fun(%.*s,\n  ",
             (int)(stats[i].fun.name.right - stats[i].fun.name.left),
             str + stats[i].fun.name.left);
      print_expr(stats[i].fun.ids);
      printf(",");
      print_expr(stats[i].fun.expr);
      printf(")\n");
      break;
    case TypeLineStat:
      printf("TypeL(");
      print_expr(stats[i].any[0]);
      printf(",");
      print_expr(stats[i].any[1]);
      printf(")\n");
      break;
    case TypeStat:
      printf("Type(%.*s,\n  ",
             (int)(stats[i].let.name.right - stats[i].let.name.left),
             str + stats[i].let.name.left);
      print_expr(stats[i].let.expr);
      printf(")\n");
      break;
    case LetLineStat:
      printf("LetL(");
      print_expr(stats[i].any[0]);
      printf(",");
      print_expr(stats[i].any[1]);
      printf(")\n");
      break;
    case LetStat:
      printf("Let(%.*s,\n  ",
             (int)(stats[i].let.name.right - stats[i].let.name.left),
             str + stats[i].let.name.left);
      print_expr(stats[i].let.expr);
      printf(")\n");
      break;
    case TopExprStat:
      print_expr(stats[i].top.expr);
      puts("");
      break;
    }
  }

  // stats need special care due to inner allocs
  vec_delete(lexems);
  return 0;
}

void print_lexems(const Lexeme *lexems) {
  for (u64 i = 0; i < vec_len((const Vec)lexems); i++) {
    switch (lexems[i].type) {
    case DirvTok:
    case IdTok:
    case StrTok:
      printf("%s %llu %llu\n", get_lex_str(lexems[i].type), lexems[i].str.left,
             lexems[i].str.right);
      break;
    case ChrTok:
      printf("%s %c\n", get_lex_str(lexems[i].type), lexems[i].ch);
      break;
    case NumTok:
      printf("%s %llu\n", get_lex_str(lexems[i].type), lexems[i].num);
      break;
    case FloatTok:
      printf("%s %f\n", get_lex_str(lexems[i].type), lexems[i].flt);
      break;
    default:
      puts(get_lex_str(lexems[i].type));
    }
  }
}
