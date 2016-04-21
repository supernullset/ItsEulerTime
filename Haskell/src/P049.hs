module P049 (
  solution
  ) where

import Lib (isPrime)

import Data.List (permutations, nub, sort)

--The arithmetic sequence, 1487, 4817, 8147, in which each of the terms increases by 3330, is unusual in two ways: (i) each of the three terms are prime, and, (ii) each of the 4-digit numbers are permutations of one another.

--There are no arithmetic sequences made up of three 1-, 2-, or 3-digit primes, exhibiting this property, but there is one other 4-digit increasing sequence.

--What 12-digit number do you form by concatenating the three terms in this sequence?

searchSpace = filter isPrime [1111..9999]

canidates s= sort $ map (\x -> read x :: Integer) $ nub $ permutations $ show s

tups nums= [(a,b,c) | a<-nums, b<-nums, c<-nums, a /= b, b /= c, a < b,  b < c ]

findVals xs = filter (\(x,y,z) -> [isPrime x, isPrime y, isPrime z] == [True, True, True]) $ filter (\(x,y,z) -> (y - x) == (z - y)) xs



solution = join inner
  where
    sols = filter (\x -> x /= []) $ map (findVals . tups . canidates) searchSpace
    inner = filter (\(x,y,z) -> 12 == length (show x ++ show y ++ show z) && x /= 1487) $ nub $ concat sols
    join [(x,y,z)] = show x ++ show y ++ show z
