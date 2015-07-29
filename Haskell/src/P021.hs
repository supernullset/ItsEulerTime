module P021 (main) where

-- Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
-- If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

-- For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

-- Evaluate the sum of all the amicable numbers under 10000.

import Data.List (tails)
import Lib as L

sumProperDivisors n = sum $ L.properDivisors n

amicableNumbers = [(220, 284)]

isAmicable (a,b) = (sumProperDivisors a == b && sumProperDivisors b == a) && a /= b

pairs xs = [(x1, x2) | (x1:xs1) <- tails xs, x2 <- xs1]

main = foldl (\acc (x,y) -> acc + x + y) 0 $ filter isAmicable $ pairs [1..10000]
