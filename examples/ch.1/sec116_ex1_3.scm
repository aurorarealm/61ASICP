#lang scheme
;定义一个过程，三个参数，返回较大的两个数之和
(define (max3 x y z)
        (if (>= x y)
            (if (>= y z) (+ x y) (+ x z))
            (if (>= x z) (+ x y) (+ z y))
              )
  )
(max3 3 4 7)





