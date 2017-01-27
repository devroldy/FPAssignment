(DEFINE (reverse-general L)
        (COND ((null? L) '())
              ((list? L)
               (append (reverse-general (cdr L))
               (list (reverse-general (car L)))))
             (else L)))
(reverse-general '(1 (2 3) (4 (a (b (c d))))))


(DEFINE (sum-up-numbers-simple L)
  (cond
((null? L) 0)
((not (list? L)) 0)
((not (number? (car L))) (sum-up-numbers-simple (cdr L)))
(else
 (+ (sum-up-numbers-simple (car L)) (sum-up-numbers-simple (cdr L)))
        (+ (car L) (sum-up-numbers-simple (cdr L)))
) )
)

(sum-up-numbers-simple '(a b 100 (200)))



(number? 1)
