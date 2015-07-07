{-
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
-}

module ZeroOneZero (main) where

import Lib as L

main = sum $ takeWhile ( < 2000000) L.primes
