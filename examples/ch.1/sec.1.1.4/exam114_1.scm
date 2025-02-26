#lang scheme
(define (square x) (* x x))
(square 21)

(square (+ 2 5))

(square (square 3))


(define (sum-of-squares x y);定义平方和的函数名，参数x，y
        (+ (square x) (square y));具体的函数body
  )

(sum-of-squares 3 4);计算3，4的平方和

;用以上平方和构造下面的函数：
(define (f a);定义函数f,参数a
        (sum-of-squares (+ a 1) (* a 2));函数身体，（a+1)^2+(a*2)^2
  )
(f 5)


