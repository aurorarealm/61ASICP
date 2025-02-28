#lang scheme

;这个代码的目的是求立方根。

;1 主函数:涉及3个函数,自身、good-enough?、approximation近似值
(define (cube-root guess x)
        (if (good-enough? guess x)
            guess
            (cube-root (approximation guess x) x)
         )   
  )

;approximation近似值
(define (approximation y x)
        (/ (+ (/ x (* y y))
             (* 2 y))
            3
            )
  )


;(define (good-enough? guess x)
;        (< (/ (abs (- x (cube guess))) x) 0.001)
;  )

(define (good-enough? guess x)
        (< (/ (abs (- x (cube guess))) x) 0.00001)
  )

(define (cube z) (* (* z z) z))


(define (cuberoot x) (cube-root 1.0 x))

;求解:
(cuberoot 125)




