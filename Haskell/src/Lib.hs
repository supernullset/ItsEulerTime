module Lib
       (
         isPrime
       , factors
       , isPalendrome
       , multiples
       , primes
       , sumSquare
       , squareSum
       ) where

import Data.Char as C
import qualified Data.Numbers.Primes as P

isPrime = P.isPrime

factors :: Integer -> [Integer]
factors n = [ x | x <- [1..n], mod n x == 0]

isPalendrome :: String -> Bool
isPalendrome x | x == reverse x = True
               | otherwise = False

multiples = [ show $ fromIntegral x*y | x <- [1..999], y <- [1..999]]

sumSquare :: [Int] -> Int
sumSquare [] = 0
sumSquare [x] = x * x
sumSquare (x:xs) = sumSquare [x] + sumSquare xs

squareSum :: [Int] -> Int
squareSum [] = 0
squareSum [x] = x * x
squareSum (x:xs) = (x + sum xs) ^ 2

primes = P.primes
