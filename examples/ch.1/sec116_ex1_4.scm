#lang scheme
;这是一个求a和（b的绝对值）之和
(define (a-plus-abs a b)
        ((if (> b 0) + -)
         a
         b
         )
  )
(a-plus-abs 3 -4)
(a-plus-abs 3 4)
(a-plus-abs -3 -4)
(a-plus-abs -3 4)