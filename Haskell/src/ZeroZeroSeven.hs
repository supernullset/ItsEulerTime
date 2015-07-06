module ZeroZeroSeven (main) where

import Lib as L

-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
-- What is the 10 001st prime number?
main :: Integer
main = L.primes !! 10000
