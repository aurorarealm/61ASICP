#lang scheme
;这是一个求两个数绝对值之和
(define (a-plus-abs a b)
        ((if (> b 0) + -)
         a
         b
         )
  )
(a-plus-abs 3 -4)
(a-plus-abs 3 4)