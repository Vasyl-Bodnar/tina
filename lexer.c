#include "lexer.h"
#include "vec.h"
#include <ctype.h>
#include <string.h>

const i8 *get_err_str(const enum lex err) {
  switch (err) {
  case Success:
    return "Successful operation.";
  case ImproperMutable:
    return "Improper application of the mutable symbol @.";
  case ImproperNumber:
    return "Improper number declaration.";
  case UnfinishedStr:
    return "EOF before the end of string.";
  case UnfinishedChar:
    return "EOF before the end of char.";
  case UnknownChar:
    return "Such char does not exist.";
  default:
    return "Not an Error";
  }
}

const i8 *get_lex_str(const enum lex tok) {
  switch (tok) {
  case SpanTok:
    return "SpanTok";
  case DirvTok:
    return "DirvTok";
  case IdTok:
    return "IdTok";
  case StrTok:
    return "StrTok";
  case ChrTok:
    return "ChrTok";
  case MutTok:
    return "MutTok";
  case LambTok:
    return "LambTok";
  case DotTok:
    return "DotTok";
  case PlusTok:
    return "PlusTok";
  case MinusTok:
    return "MinusTok";
  case StarTok:
    return "StarTok";
  case DivTok:
    return "DivTok";
  case EqTok:
    return "EqTok";
  case GtTok:
    return "GtTok";
  case GteTok:
    return "GteTok";
  case LtTok:
    return "LtTok";
  case LteTok:
    return "LteTok";
  case ColonTok:
    return "ColonTok";
  case SemiColonTok:
    return "SemiColonTok";
  case CommaTok:
    return "CommaTok";
  case LBrackTok:
    return "LBrackTok";
  case RBrackTok:
    return "RBrackTok";
  case LSqBrackTok:
    return "LSqBrackTok";
  case RSqBrackTok:
    return "RSqBrackTok";
  case LParenTok:
    return "LParenTok";
  case RParenTok:
    return "RParenTok";
  case RArrowTok:
    return "RArrowTok";
  case NumTok:
    return "NumTok";
  case FloatTok:
    return "FloatTok";
  case ModTok:
    return "ModTok";
  case PubTok:
    return "PubTok";
  case SigTok:
    return "SigTok";
  case FunTok:
    return "FunTok";
  case LetTok:
    return "LetTok";
  case TypeTok:
    return "TypeTok";
  case TraitTok:
    return "TraitTok";
  case EnumTok:
    return "EnumTok";
  case DeferTok:
    return "DeferTok";
  case IfTok:
    return "IfTok";
  case ThenTok:
    return "ThenTok";
  case ElseTok:
    return "ElseTok";
  case TrueTok:
    return "TrueTok";
  case FalseTok:
    return "FalseTok";
  case WhileTok:
    return "WhileTok";
  case ForTok:
    return "ForTok";

  case UnknownChar:
    return "Err:UnknownChar";
  case ImproperMutable:
    return "Err:ImproperMutable";
  case ImproperNumber:
    return "Err:ImproperNumber";
  case UnfinishedStr:
    return "Err:UnfinishedStr";
  case UnfinishedChar:
    return "Err:UnfinishedChar";
  case Success:
    return "??Success??";
  }
}

void error_check(Lexer *lexer, enum lex (*fn)(Lexer *)) {
  enum lex err = fn(lexer);
  if (err) {
    lexer->err = 1;
    Lexeme *tmp = vec_push_get(&lexer->lexems);
    tmp->type = err;
    tmp->row = lexer->row;
    tmp->col = lexer->col;
  }
}

inline void adv(Lexer *lexer) {
  lexer->pt++;
  lexer->col++;
}

void ch(Lexer *lexer, const enum lex type) {
  adv(lexer);
  Lexeme *lexm = vec_push_get(&lexer->lexems);
  lexm->type = type;
  lexm->row = lexer->row;
  lexm->col = lexer->col;
}

void skip_comm(Lexer *lexer) {
  while (lexer->pt < lexer->len && lexer->col++ &&
         lexer->input[lexer->pt++] != '\n') {
  }
}

void comp(Lexer *lexer, const enum lex type) {
  adv(lexer);
  if (lexer->pt < lexer->len) {
    if (type == GtTok) {
      if (lexer->input[lexer->pt] == '=') {
        ch(lexer, GteTok);
      }
    } else if (lexer->input[lexer->pt] == '=') {
      ch(lexer, LteTok);
    }
  }
  Lexeme *lexm = vec_push_get(&lexer->lexems);
  lexm->type = type;
  lexm->row = lexer->row;
  lexm->col = lexer->col;
}

enum lex mut(Lexer *lexer) {
  ch(lexer, MutTok);
  if (lexer->pt < lexer->len) {
    i8 ch = lexer->input[lexer->pt];
    if (ch != '[' && ch != '"') {
      return ImproperMutable;
    }
    return Success;
  }
  return ImproperMutable;
}

enum lex num_or_float(Lexer *lexer) {
  u64 mark = lexer->pt;
  while (lexer->pt < lexer->len && '0' <= lexer->input[lexer->pt] &&
         lexer->input[lexer->pt] <= '9') {
    adv(lexer);
  }
  if (lexer->input[lexer->pt] == '.') {
    u64 snd_mark = lexer->pt;
    do {
      adv(lexer);
    } while (lexer->pt < lexer->len && '0' <= lexer->input[lexer->pt] &&
             lexer->input[lexer->pt] <= '9');
    f64 flt = 0;
    f64 half = 0;
    for (u64 i = mark; i < snd_mark; i++) {
      flt = flt * 10 + (lexer->input[i] - '0');
    }
    if (lexer->pt - snd_mark != 1) {
      for (u64 i = lexer->pt - 1; i > snd_mark; i--) {
        half = half / 10 + (lexer->input[i] - '0');
      }
    }
    flt += half / 10;
    Lexeme *lexm = vec_push_get(&lexer->lexems);
    lexm->type = FloatTok;
    lexm->row = lexer->row;
    lexm->col = lexer->col;
    lexm->flt = flt;
    return Success;
  }
  u64 num = 0;
  for (u64 i = mark; i < lexer->pt; i++) {
    num = num * 10 + (lexer->input[i] - '0');
  }
  Lexeme *lexm = vec_push_get(&lexer->lexems);
  lexm->type = NumTok;
  lexm->row = lexer->row;
  lexm->col = lexer->col;
  lexm->num = num;
  return Success;
}

void str_til_spc(Lexer *lexer, const enum lex type) {
  u64 mark = lexer->pt;
  while (lexer->pt < lexer->len && !isspace(lexer->input[lexer->pt])) {
    adv(lexer);
  }
  Lexeme *lexm = vec_push_get(&lexer->lexems);
  lexm->type = type;
  lexm->row = lexer->row;
  lexm->col = lexer->col;
  lexm->str = (RefStr){.left = mark, .right = lexer->pt};
}

enum lex str_til_strend(Lexer *lexer) {
  u64 mark = ++lexer->pt;
  do {
    if (lexer->pt >= lexer->len) {
      return UnfinishedStr;
    }
  } while (lexer->col++ && lexer->input[lexer->pt++] != '"');
  Lexeme *lexm = vec_push_get(&lexer->lexems);
  lexm->type = StrTok;
  lexm->row = lexer->row;
  lexm->col = lexer->col;
  lexm->str = (RefStr){.left = mark, .right = lexer->pt - 1};
  return Success;
}

enum lex ch_til_chend(Lexer *lexer) {
  u64 mark = ++lexer->pt;
  while (lexer->pt < lexer->len && !isspace(lexer->input[lexer->pt])) {
    adv(lexer);
  }
  Lexeme *lexm = vec_push_get(&lexer->lexems);
  lexm->type = ChrTok;
  lexm->row = lexer->row;
  lexm->col = lexer->col;
  switch (lexer->pt - mark) {
  case 1:
    lexm->ch = lexer->input[mark];
    break;
  case 3:
    if (!strncmp(lexer->input + mark, "tab", 3)) {
      lexm->ch = ' ';
      break;
    }
  case 5:
    if (!strncmp(lexer->input + mark, "space", 5)) {
      lexm->ch = ' ';
      break;
    }
  default:
    return UnknownChar;
  }
  return Success;
}

void id_or_key(Lexer *lexer) {
  str_til_spc(lexer, IdTok);
  Lexeme *lexm = &lexer->lexems[vec_len(lexer->lexems) - 1];
  u64 len = lexer->pt - lexm->str.left;
  switch (len) {
  case 2:
    if (!strncmp(lexer->input + lexm->str.left, "if", len)) {
      lexm->type = IfTok;
    }
    break;
  case 3:
    if (!strncmp(lexer->input + lexm->str.left, "mod", len)) {
      lexm->type = ModTok;
    } else if (!strncmp(lexer->input + lexm->str.left, "pub", len)) {
      lexm->type = PubTok;
    } else if (!strncmp(lexer->input + lexm->str.left, "sig", len)) {
      lexm->type = SigTok;
    } else if (!strncmp(lexer->input + lexm->str.left, "fun", len)) {
      lexm->type = FunTok;
    } else if (!strncmp(lexer->input + lexm->str.left, "let", len)) {
      lexm->type = LetTok;
    } else if (!strncmp(lexer->input + lexm->str.left, "for", len)) {
      lexm->type = ForTok;
    }
    break;
  case 4:
    if (!strncmp(lexer->input + lexm->str.left, "type", len)) {
      lexm->type = TypeTok;
    } else if (!strncmp(lexer->input + lexm->str.left, "enum", len)) {
      lexm->type = EnumTok;
    } else if (!strncmp(lexer->input + lexm->str.left, "then", len)) {
      lexm->type = ThenTok;
    } else if (!strncmp(lexer->input + lexm->str.left, "else", len)) {
      lexm->type = ElseTok;
    } else if (!strncmp(lexer->input + lexm->str.left, "true", len)) {
      lexm->type = TrueTok;
    }
    break;
  case 5:
    if (!strncmp(lexer->input + lexm->str.left, "trait", len)) {
      lexm->type = TraitTok;
    } else if (!strncmp(lexer->input + lexm->str.left, "defer", len)) {
      lexm->type = DeferTok;
    } else if (!strncmp(lexer->input + lexm->str.left, "while", len)) {
      lexm->type = WhileTok;
    } else if (!strncmp(lexer->input + lexm->str.left, "false", len)) {
      lexm->type = FalseTok;
    }
    break;
  default:
    break;
  }
}

void all(Lexer *lexer) {
  while (lexer->pt < lexer->len) {
    switch (lexer->input[lexer->pt]) {
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
      error_check(lexer, num_or_float);
      break;
    case '+':
      ch(lexer, PlusTok);
      break;
    case '-':
      if (lexer->pt + 1 < lexer->len && lexer->input[lexer->pt + 1] == '>') {
        adv(lexer);
        ch(lexer, RArrowTok);
      } else {
        ch(lexer, MinusTok);
      }
      break;
    case '*':
      ch(lexer, StarTok);
      break;
    case '/':
      if (lexer->pt + 1 < lexer->len && lexer->input[lexer->pt + 1] == '/') {
        lexer->pt += 2;
        skip_comm(lexer);
      } else {
        ch(lexer, DivTok);
      }
      break;
    case '\\':
      ch(lexer, LambTok);
      break;
    case '.':
      ch(lexer, DotTok);
      break;
    case ';':
      ch(lexer, SemiColonTok);
      break;
    case ':':
      ch(lexer, ColonTok);
      break;
    case '=':
      ch(lexer, EqTok);
      break;
    case '>':
      comp(lexer, GtTok);
      break;
    case '<':
      comp(lexer, LtTok);
      break;
    case '@':
      error_check(lexer, mut);
      break;
    case '[':
      ch(lexer, LSqBrackTok);
      break;
    case ']':
      ch(lexer, RSqBrackTok);
      break;
    case '(':
      ch(lexer, LParenTok);
      break;
    case ')':
      ch(lexer, RParenTok);
      break;
    case '{':
      ch(lexer, LBrackTok);
      break;
    case '}':
      ch(lexer, RBrackTok);
      break;
    case '"':
      error_check(lexer, str_til_strend);
      break;
    case '\'':
      error_check(lexer, ch_til_chend);
      break;
    case ' ':
    case '\t':
      adv(lexer);
      break;
    case '\r':
      lexer->pt++;
      break;
    case '\n':
      lexer->pt++;
      lexer->col = 0;
      lexer->row++;
      break;
    case '#':
      adv(lexer);
      str_til_spc(lexer, DirvTok);
      break;
    default:
      id_or_key(lexer);
    }
  }
}

Lexeme *lex(const i8 *input, const u64 len) {
  Lexer lexer = (Lexer){
      .input = input,
      .len = len,
      .col = 1,
      .row = 1,
      .pt = 0,
      .err = 0,
      .lexems = vec_create(),
  };

  all(&lexer);

  return (Lexeme *)((usize)lexer.lexems | lexer.err);
}
