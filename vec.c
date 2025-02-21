#include "vec.h"
#include <stdio.h>
#include <stdlib.h>

VecHead *get_header(const Vec vec) { return &((VecHead *)vec)[-1]; }

Vec vec_create(void) {
  VecHead *head = malloc(sizeof(*head));
  head->cap = 0;
  head->len = 0;
  return &head->data;
}

void vec_delete(Vec vec) { free(get_header(vec)); }

u64 vec_len(const Vec vec) { return get_header(vec)->len; }
u64 vec_cap(const Vec vec) { return get_header(vec)->cap; }

Vec _vec_clone(const Vec vec, u64 size) {
  VecHead *head = get_header(vec);

  VecHead *oth_head = malloc(sizeof(*oth_head));
  oth_head->cap = head->len;
  oth_head->len = head->len;
  for (u64 i = 0; i < size * head->len; i++) {
    oth_head->data[i] = head->data[i];
  }
  return &oth_head->data;
}

VecHead *vec_try_realloc(VecHead *head, u64 size) {
  if (head->len >= head->cap) {
    u64 update = head->cap ? head->cap * 2 : 1;
    if ((head = realloc(head, sizeof(*head) + size * update))) {
      head->cap = update;
      return head;
    }
    perror("Vector realloc failed");
    return 0;
  }
  return head;
}

void *_vec_push_get(Vec *vec, u64 size) {
  VecHead *head = get_header(*vec);
  head = vec_try_realloc(head, size);
  *vec = head->data;
  return &head->data[size * head->len++];
}

// NOTE: This needs to be cloned or used immediately
void *_vec_pop_get(Vec vec, u64 size) {
  VecHead *head = get_header(vec);
  return &head->data[size * --head->len];
}

void _vec_pop(Vec vec) { get_header(vec)->len -= 1; }
