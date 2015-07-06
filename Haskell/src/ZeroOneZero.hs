{-
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
-}

module Main where

import Data.Numbers.Primes

main = do
  let limit = 2000000

  let sump = takeWhile ( < limit) primes

  print $ sum sump