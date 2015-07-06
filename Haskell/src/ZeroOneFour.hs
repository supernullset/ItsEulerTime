{-
problem 14.hs

The following iterative sequence is defined for the set of positive integers:

n  n/2 (n is even)
n  3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13  40  20  10  5  16  8  4  2  1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
-}

module Main where
import Data.Numbers.Primes

collatzProblem :: Integer -> Integer
collatzProblem 0 =0
collatzProblem 1 = 1
collatzProblem n | even n == True = div n 2
                 | otherwise = (3*n) +1

recursiveCollatz :: Integer -> [Integer]
recursiveCollatz 0 = []
recursiveCollatz 1 = 1 : []
recursiveCollatz n = n : recursiveCollatz (collatzProblem n) 

comparative :: Int -> Int -> Int
comparative x y | x < y = y
                | otherwise = x

main = do
  let limit = 1000000
--  let nonPrimes = filter (\x -> isPrime x /= True) [0..limit]
  let collatz = map length (map recursiveCollatz [0..limit])
  let result = foldl1 comparative collatz
  
  print $ [0..limit] !! result