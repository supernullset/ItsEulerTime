module P001 (
    main
--  , parallelMain
  ) where

import Lib as L
import Control.Parallel.Strategies

-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
-- Find the sum of all the multiples of 3 or 5 below 1000.
main :: Int
main = sum $ filtered [0..999]
  where
    filtered nums = filter (\z -> mod z 3 == 0 || mod z 5 ==0) nums

--parallelMain :: Int
-- parallelMain = runEval $ do
--   l1 <- rpar $ filter (\z -> mod z 3 == 0 || mod z 5 ==0) [0..250]
--   l2 <- rpar $ filter (\z -> mod z 3 == 0 || mod z 5 ==0) [251..500]
--   l3 <- rpar $ filter (\z -> mod z 3 == 0 || mod z 5 ==0) [501..750]
--   l4 <- rpar $ filter (\z -> mod z 3 == 0 || mod z 5 ==0) [75..999]
--   s <- rseq $ sum l1 l2 l3 l4
--   return s
--  sum $ filter (\z -> mod z 3 == 0 || mod z 5 ==0) [0..999]
