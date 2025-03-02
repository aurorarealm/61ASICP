#lang scheme
;求第n个自然数的斐波那契数列（Fibonacci）,采用迭代
(require scheme/trace)  ; 导入 trace 模块

(define (fib n)
        (fib-iter 1 0 n)
   )

(define (fib-iter a b count)
        (if (= count 0)
            b
            (fib-iter (+ a b) a (- count 1))
         )


  )

(trace fib-iter)  ; 必须是追踪原函数,run后显示递归过程

(fib 5)
;answer:5
;>(fib-iter 1 0 5)
;>(fib-iter 1 1 4)
;>(fib-iter 2 1 3)
;>(fib-iter 3 2 2)
;>(fib-iter 5 3 1)
;>(fib-iter 8 5 0)
;<5
