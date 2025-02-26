#lang scheme
;cond表示条件
;1 第1种绝对值计算方法
(define (abs1 x);abs是scheme内置的函数，所以构建新函数，用abs1
        (cond ((> x 0) x)
              ((= x 0) 0)
              ((< x 0) (- 0 x))
        )
)
;验证三个数字
(abs1 3)
(abs1 0)
(abs1 -4)

;2 第2种绝对值计算方法
(define (abs2 x);同abs1
        (cond ((< x 0) (- 0 x))
              (else x);else是一个特殊符号，可以用在cond的最后一个子句p
        )
  )
;验证三个数字
(abs2 1)
(abs2 0)
(abs2 -2)

;3 第3种绝对值计算方法
(define (abs3 x)
        (if (< x 0);适用于只有两种情况，用法( if ( predicate ) ( consequent ) ( alternative ) )
            (- x)
            x
         )
  )
;验证三个数字
(abs3 9)
(abs3 0)
(abs3 -10)