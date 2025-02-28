#lang scheme
;(require "sec117_1new_provide.scm")
;(sqrt-iter 1.0 0.00009)

;修改good-enough?,把差值改成比率

;这个代码的目的是求平方根。

;1 主函数:涉及3个函数,自身、good-enough?、improve
(define (sqrt-iter guess x)
        (if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x) x)
         )   
  )
;定义函数sqrt-iter,参数为guess和x。 如果“good-enough?”为true,则为guess;否则再求函数
;sqrt-iter,但是参数guess调整为improve,参数为guess和x。
;------------------------

;1.1 good-enough?函数,涉及1个square求平方函数
(define (good-enough? guess x)
        (< (/ (abs (- x (square guess))) x) 0.0000001)
  )
;定义函数"good-enough?",参数为guess和x。猜测值平方和x差值除以x是否小于0.001。上一版是差值。显然比率要速度快的都。
;----------
;1.1.1 square函数
(define (square x) (* x x))
;(square 2)
;---------------

;1.2 improve函数,参数是guess x
(define (improve guess x)
        (average guess (/ x guess))
  );improve函数,参数是guess、x/guess。
;1.2.1 improve函数涉及有一个average函数
(define (average x y) (/ (+ x y) 2));定义average函数,参数x,y。函数体是:(x+y)/2
;-----------------

;求解:
(sqrt-iter 1.0 4)







