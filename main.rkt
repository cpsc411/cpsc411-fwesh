#lang racket
(require racket/syntax)

(provide uwuify
         fwesh)

(define uwu-map
  (list '(#rx"r|l" "w")
        '(#rx"R|L" "W")
        '(#rx"n([aeiou])" "ny\\1")
        '(#rx"N([aeiou])" "Ny\\1")
        '(#rx"N([AEIOU])" "NY\\1")
        '(#rx"ove" "uv")
        '(#rx"Ove" "Uv")
        '(#rx"oVe" "uV")))

(define (uwuify-string s)
  (foldl (lambda (rule s) (regexp-replace* (car rule) s (cadr rule))) s uwu-map))

(define (uwuify x)
  (cond
    [(string? x) (uwuify-string x)]
    [(symbol? x) (string->symbol (uwuify-string (symbol->string x)))]
    [else x]))

(define (label? s)
  (and (symbol? s) (or (eq? s 'done) (regexp-match-exact? #rx"L\\..+\\.[0-9]+" (symbol->string s)))))

(define fwesh
  (let ([counter (let ([x 0])
                   (lambda ()
                     (set! x (add1 x))
                     x))])
    (lambda ([x 'twp])
      (let ([x (uwuify x)])
        (format-symbol "~a.~a" (if (label? x) (format-symbol ".~a" x) x) (counter))))))
