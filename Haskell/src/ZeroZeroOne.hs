module ZeroZeroOne (main) where

import Lib as L

-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
-- Find the sum of all the multiples of 3 or 5 below 1000.
main :: Int
main = sum $ filtered [0..999]
  where
    filtered nums = filter (\z -> mod z 3 == 0 || mod z 5 ==0) nums
