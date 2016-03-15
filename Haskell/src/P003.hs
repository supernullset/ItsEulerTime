module P003 (solution) where

import Lib as L

-- The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143 ?
solution :: Integer
solution = maximum $ L.primeFactors 600851475143
