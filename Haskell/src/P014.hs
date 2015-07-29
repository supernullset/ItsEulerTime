module P014 (main) where

{-
problem 14.hs

The following iterative sequence is defined for the set of positive integers:

n -> n/2 (n is even)
n -> 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13  40  20  10  5  16  8  4  2  1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
-}

import Lib as L

import Data.Function
import Data.List

recursiveCollatz :: Integer -> [Integer]
recursiveCollatz 1 = [1]
recursiveCollatz n | even n    = n : recursiveCollatz (n `div` 2)
                   | otherwise = n : recursiveCollatz (3 * n + 1)

-- main = last (sortBy (compare `on` length . snd) $ collatz)
--   where 
--     collatz = map (\x -> (x, recursiveCollatz x)) [1..1000000]

-- maximumBy is great, it seems to discard as we go. This is a good
-- thing to know
main = maximumBy (compare `on` (length . recursiveCollatz)) [1..999999]
