#lang racket

(module+ test
  (require
   rackunit
   cpsc411/fwesh)

  (test-case "fwesh-tests"
    (test-case "uwuify strings"
      (check-equal? (uwuify "hello")
                    "hewwo")
      (check-equal? (uwuify "HELLO")
                    "HEWWO")
      (check-equal? (uwuify "love")
                    "wuv"))
    (test-case "uwuify symbols"
      (check-equal? (uwuify 'hello)
                    'hewwo)
      (check-equal? (uwuify 'HELLO)
                    'HEWWO)
      (check-equal? (uwuify 'love)
                    'wuv))
    (test-case "fwesh"
      (check-equal? (fwesh 'hello)
                    'hewwo.1)
      (check-equal? (fwesh "HELLO")
                    'HEWWO.2)
      (check-equal? (fwesh "love")
                    'wuv.3)
      (check-equal? (fwesh)
                    'twp.4))))
