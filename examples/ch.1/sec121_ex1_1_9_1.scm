#lang scheme
;Each of the following two procedures defines a method for adding two positive integers in terms of the procedures inc, which increments its argument by 1 , 
(require scheme/trace)  ; 导入 trace 模块

  (define (inc x) (+ x 1))
  (define (dec x) (- x 1))
(define (plus a b)

  (if (= a 0)
      b
      (inc (plus (dec a) b)
       )
   )

  )
(trace plus)  ; 追踪   函数
(plus 3 2)


;>(plus 3 2)
;> (plus 2 2)
;> >(plus 1 2)
;> > (plus 0 2)
;< < 2
;< <3
;< 4
;<5









