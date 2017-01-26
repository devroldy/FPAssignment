

(DEFINE (reversing L)
        (COND ((null? L) '())
              ((list? L)
               (append (reversing (cdr L))
                       (list (reversing (car L)))
)
   )
             (else l)
              ))

(reverse '(a (b c) ((d e) f) g))

;(DEFINE (sum L)
;(IF (null? L) 0)
 ;   ( + (CAR L) (sum (CDR L))))


;(defiine (sum s)
 ;     (if (null? s)
  ;        0

   ;       (+ (car s) (sum (cdr s)))))

;(sum '(2 3))

(define (summation a)
  (COND ((null? a) '())
        ((number? a) (list? a) 
        (+ (car a) (summation (cdr a))))

        (else a))
  
  )
(summation '(2 3 3))

(define (my-summation li)
  (if (null? li)
      0
      (if (list? (car li))
          (+ (my-summation (car li)) (my-summation (cdr li)))
          (+ (car li) (my-summation (cdr li)))) ))

(my-summation '(1 2 3))



(number? 1)
