#lang scheme
;求第n个自然数的斐波那契数列（Fibonacci）,采用递归
(require scheme/trace)  ; 导入 trace 模块

(define (fib n)
        (cond ((= n 0) 0)
              ((= n 1) 1)
              (else (+ (fib (- n 1))
                       (fib (- n 2))
                     ) 
               )     
         )
  )

(trace fib)  ; 追踪函数,run后显示递归过程

(fib 5)
;answer:5
;>(fib 5)
;> (fib 4)
;> >(fib 3)
;> > (fib 2)
;> > >(fib 1)
;< < <1
;> > >(fib 0)
;< < <0
;< < 1
;> > (fib 1)
;< < 1
;< <2
;> >(fib 2)
;> > (fib 1)
;< < 1
;> > (fib 0)
;< < 0
;< <1
;< 3
;> (fib 3)
;> >(fib 2)
;> > (fib 1)
;< < 1
;> > (fib 0)
;< < 0
;< <1
;> >(fib 1)
;< <1
;< 2
;<5
