#include "lexer.h"
#include "vec.h"
#include <stdio.h>
#include <string.h>

int main(void) {
  const i8 *str = "let x = 2";
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

  for (u64 i = 0; i < vec_len(lexems); i++) {
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

  vec_delete(lexems);
  return 0;
}
