module P041 (solution) where

-- We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once. For example, 2143 is a 4-digit pandigital and is also prime.

-- What is the largest n-digit pandigital prime that exists?

import qualified Lib as L (isPrime)
import Data.List (permutations)

-- A number is divisible by three if its digit sum is divisible by 3
-- testing numbers of the digit form:
-- mod (sum $ digits 987654321) 3 == 0
-- down to 1, this shows that I only need to search primes with 4 or 7 digits

-- First Pass
--solution = maximum $ filter L.isNPandigital $ filter (\x -> 7 == (length $ show x)) L.primes


-- Given that I know my solution will have 7 digits, and be
-- pandigital, why dont I just find the largest 7 digit prime in the
-- permutations of 1..7?

solution :: Integer
solution = maximum $ filter L.isPrime $ map (read . concatMap show) $ permutations [1..7]
