﻿# Mystika

The Mystika project seeks to deliver an industrial quality, high-performance cryptographic library with forward-looking features and very high-level code. The idea is to deliver a cryptographic foundation for critical software that consists of a small, efficient, and easy to audit code base built on very high-level coding practices. Here are some key goals:

* Demonstrably Reliable
* Safe and future-worthy cryptography only
* Protocol level compatibility with existing standards when possible
* Easy to use

## Dictionary

Here are the verbs, nouns, adverbs, and conjunctions provided by this project.

### Data Structures

    BA ⍝ Bignum Array
    bf ⍝ Bignum function
    NBA ⍝ Nested bignum Array

A bignum array is an array of bignums that is stored as an array of 32-bit integers where the first axis is fixed to the number of places for each number. For each BA, the first element indicates
the base, which must have the form B for a real bignum or 0JB for a complex bignum where B<2*16, the second element indicates the number of places that the radix point is shifted to the left (a negative number indicates that the radix point is shifted to the right), and the third element is 1 for a negative real bignum and zero otherwise (even in the complex case).

### APL Primitive Functions

    BA←ima BA           ⍝ 11○ over bignums
    BA←rea BA           ⍝ 9○ over bignums
    BA←cnj BA           ⍝ monadic + over Bignums
    BA←BA add BA        ⍝ dyadic + over Bignums
    BA←{BA} sub BA      ⍝ - over Bignums
    BA←BA mul BA        ⍝ dyadic × over Bignums
    BA←{BA} cat BA      ⍝ ⍪ over bignums
    BA←rav BA           ⍝ , over bignums (monadically: , also works).
    BA←{A} trn BA       ⍝ ⍉ over bignums
    BA←{A} rot BA       ⍝ ⌽ over bignums
    BA←{A} rof BA       ⍝ ⊖ over bignums
    BA←{A} pic BA       ⍝ ⊃ over bignums
    BA←{A} sqd BA       ⍝ ⌷ over bignums
    A←BA eql BA         ⍝ = over Bignums
    A←BA neq BA         ⍝ ≠ over Bignums
    A←BA leq BA         ⍝ ≤ over Bignums
    A←BA geq BA         ⍝ ≥ over Bignums
    A←BA gth BA         ⍝ > over Bignums
    A←BA lth BA         ⍝ < over Bignums
    BA←flo BA           ⍝ monadic ⌊ over bignums
    BA←cel BA           ⍝ monadic ⌈ over bignums
    BA←BA min BA        ⍝ dyadic ⌊ over Bignums
    BA←BA max BA        ⍝ dyadic ⌈ over Bignums
    BA←abs BA           ⍝ monadic | over Bignums
    BA←{A} rho BA       ⍝ ⍴ over Bignums
    BA←{BA} eps BA      ⍝ ∊ over Bignums
    BA←BA ind BA        ⍝ dyadic ⍳ over Bignums
    BA←rol BA           ⍝ monadic ? over Bignums
    BA←tke BA           ⍝ dyadic ↓ over Bignums
    BA←drp BA           ⍝ dyadic ↑ over Bignums 
    BA←spl BA           ⍝ monadic ↓ over Bignums
    BA←mix NBA          ⍝ monadic ↑ over Bignums
    BA←{BA} div BA      ⍝ ÷ over Bignums
    BA←BA mod BA        ⍝ | over Bignums

### APL Primitive Operators

    BA←BA bf dot bf BA  ⍝ f.g over bignums
    BA←BA bf out BA     ⍝ ∘.f over bignums
    BA←bf red BA        ⍝ f/ over bignums
    BA←bf scn BA        ⍝ f\ over bignums
    BA←bf rdf BA        ⍝ f⌿  over bignums
    BA←bf scf BA        ⍝ f⍀  over bignums
    BA←BA bf pop bg BA  ⍝ f⍣g over bignums

### Numerical Algorithms
    
### Hashing

### Cyphers

### Protocols

### Application Utilities

    H←{B} hex S

Converts an integer array S into a hexadecimal string representing the data in row major order. Each element is assumed to represent B bits of data. If B is not provided, then the largest value in the array is used to calculate the number of bits to use per element.

## Developer's Guide

Working with the Mystika code base involves writing tests in the `tests/` directory and writing code in the `[a-z].cd` files in the root directory. Code is loaded into the `mystika` workspace using the `LOAD` function. The `UT` and `util` namespaces provide testing harness and utility function support for developers.

### Useful Developer Functions

    util.test <name> ⍝ Run the <name>_tests.dyalog test in tests/
    util.TEST        ⍝ Run all tests in tests/
    util.pp          ⍝ Equivalent to ⊢ but with a display as a side-effect
    LOAD             ⍝ Load the latest mystika source into the workspace
