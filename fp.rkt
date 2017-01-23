;Hey there comment
(define (timestwo x) (* 2 x))
(timestwo 5)

(define (f x)
  (+ x
     34
     (* x)
     22))
(f 2)

(cons 'A '(B C))
(cons '(A B) '(B C))
(LIST '(A B) '(C F))

(DEFINE (members atm lis)
  (COND
((NULL? lis) #F) ;; empty list
((EQ? atm (CAR lis)) #T)
(ELSE (members atm (CDR lis)))
))

(members 'A '(D F A G H))

#;(DEFINE (reverse-general L)
 (COND
 ((NULL? L) '())
 (ELSE (CONS append((CDR L) (CAR L)))))
 ) 
 

#;(reverse-general (a b f))

(DEFINE (reversed L)
(IF (null? L) L
    (APPEND (reversed (CDR L)) (list (CAR L)))
    
    )
)

(reversed '(a a b c ( ( d e ))))


