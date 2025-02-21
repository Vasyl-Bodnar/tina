#ifndef VEC_H
#define VEC_H

#include "sizes.h"

// Based mostly on https://github.com/Mashpoe/c-vector
// This version is a modification, but mostly a style difference
typedef void *Vec;
typedef struct vec_head {
  u64 len;
  u64 cap;
  u8 data[];
} VecHead;

Vec vec_create(void);
void vec_delete(Vec vec);

u64 vec_len(const Vec vec);
u64 vec_cap(const Vec vec);

Vec _vec_clone(const Vec vec, u64 size);

void *_vec_push_get(Vec *vec, u64 size);

void *_vec_pop_get(Vec vec, u64 size);
void _vec_pop(Vec vec);

#define vec_clone(vec) _vec_clone(vec, sizeof(*vec))

#define vec_push_get(vec_ptr)                                                  \
  ((typeof(*vec_ptr))(_vec_push_get((Vec *)vec_ptr, sizeof(**vec_ptr))))
#define vec_push(vec_ptr, val) (*vec_push_get(vec_ptr) = val)

#define vec_pop_get(vec) _vec_pop_get(vec, sizeof(*vec))
#define vec_pop(vec) _vec_pop(vec)

#endif // VEC_H
