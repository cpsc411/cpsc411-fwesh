#lang scribble/manual

@(require
   scribble/examples
   (for-label cpsc411/compiler-lib))

@defmodule[cpsc411/fwesh]

This package is a uwuified version of @racket[fresh] from @racketmodname[cpsc411/compiler-lib].

@defproc[(fwesh [x symbol? 'tmp]) symbol?]{
Produces an uwuified fresh symbol that has never been generated be @racket[fwesh].

@examples[
(require cpsc411/fwesh)
(fwesh)
(fwesh 'hello)
]
}
