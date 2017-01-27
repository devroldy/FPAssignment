(DEFINE (reverse-general L)
        (COND ((null? L) '())
              ((list? L)
               (append (reverse-general (cdr L))
               (list (reverse-general (car L)))))
             (else L)))
(reverse-general '(1 (2 3) (4 (a (b (c d))))))


(DEFINE (sum L)
  (cond
((null? L) 0)
((not (list? L)) 0)
((not (number? (car L))) (sum (cdr L)))
(else
 (+ (sum (car L)) (sum (cdr L)))
        (+ (car L) (sum (cdr L)))
) )
)

(sum '(100 (200)))



(number? 1)
