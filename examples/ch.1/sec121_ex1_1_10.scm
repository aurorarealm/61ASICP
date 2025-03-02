#lang scheme

(require scheme/trace)  ; 导入 trace 模块

(define (A x y)
        (cond((= y 0) 0)
             ((= x 0) (* 2 y))
             ((= y 1) 2)
             (else (A (- x 1)
                      (A x (- y 1)))
               )
          
       )
)
(trace A)  ; 追踪   函数
(A 1 2)
;(A 2 4)
;(A 3 3)










