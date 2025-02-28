#lang scheme
(define (new-if predicate then-clause else-clause)
        (cond (predicate then-clause)
              (else else-clause)
        )
  )

(new-if (= 2 3) 0 5)

(new-if (= 1 1) 0 5)

(define (sqrt-iter guess x)
        (new-if (good-enough? guess x)
                 guess
                 (sqrt-iter (improve guess x) x)
         )
 )

;1.1 good-enough?函数,涉及1个square求平方函数
(define (good-enough? guess x)
        (< (abs (- (square guess) x)) 0.001)
  );定义函数"good-enough?",参数为guess和x。函数的意思是 |(guess^2)-x| 是否小于0.001
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
(sqrt-iter 1 2)

;this codes eat ram. because of new-if.
;由于 new-if 会对所有参数进行求值,即使 (good-enough? guess x) 为真,sqrt-iter 仍然会递归调用自己,导致无限递归。















