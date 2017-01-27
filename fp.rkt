(DEFINE (reverse-general L)    
        (COND ((null? L) '())
              ((list? L)
               (append (reverse-general (cdr L))   ;putting switched list element together
               (list (reverse-general (car L)))))   ;Recursion also included to keep moving to next element
             (else L)
         )
)



(DEFINE (sum-up-numbers-simple L)
  (cond
((null? L) 0)
((not (list? L)) 0)
((not (number? (car L))) (sum-up-numbers-simple (cdr L)))  ;not a number returns #t and moves to the next element
(else
 (+ (sum-up-numbers-simple (car L)) (sum-up-numbers-simple (cdr L))) ;sums the current atom and recursively gets next atom
        (+ (car L) (sum-up-numbers-simple (cdr L))) ;sums the recursely got first atom together with the current
) )
)





(define (sum-up-numbers-general L)
  (cond
((null? L) 0)

((number? (car L)) (+ (car L) (sum-up-numbers-general (cdr L)))) ;if its a number does summation recursion of atoms
((list? (car L))
(+ (sum-up-numbers-general (car L)) (sum-up-numbers-general (cdr L))))   ;gets nested list summation
(else
       (+ 0 (sum-up-numbers-general (cdr L))) ;if its not a number or list sum it up to 0
) )
)



(Define (min-above-min L1 L2)
(COND ((NULL? L1)#f) ((NULL? L2)
 (COND
     ((NULL? (CDR L1))(CAR L1))
      ((< (CAR L1)(min-above-min (cdr L1) L2)) (CAR L1))
      (ELSE
           (min-above-min (CDR L1) L2))
           )
          )
(ELSE (COND
 ((>(CAR L1) (min-above-min L2 (LIST))) (CAR L1))
  (ELSE (min-above-min (CDR L1) L2)) ))))
 

(min-above-min '(1 1) '(2 3))
