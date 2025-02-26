#lang scheme

;(define (>= x2 y2) (or (> x2 y2) (= x2 y2)))
;define有两种意思：
;定义变量:(define <变量名> <值>)
;定义函数:(define (<函数名> <参数列表>) <函数体>)
;上述代码定义了一个函数，函数名为 >=，参数为 x2 和 y2，函数体为 (or (> x2 y2) (= x2 y2))
;但是>= 和<= 是scheme内置函数，所以这个函数会被后面的(display (>= -5 3))覆盖，

(define (xx x2 y2) (or (> x2 y2) (= x2 y2)))
(xx -5 3)


(define (yy x3 y3)
        (not (< x3 y3))
  )
(yy 4 5)