module Lib
       (
         isPrime
       , factors
       , isPalendrome
       , multiples
       , primes
       , primeFactors
       , sumSquare
       , squareSum
       , groupsOf
       , choose
       , properDivisors
       , factorial
       , digits
       , rotations
       , intStringToList
       ) where

import Data.Char as C
import qualified Data.Numbers.Primes as P
import qualified Data.List as L (tails, inits) 

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

primeFactors = P.primeFactors
primes = P.primes

groupsOf _ [] = []
groupsOf n xs = take n xs : groupsOf n ( tail xs )

-- binomial coefficents
choose n 0 = 1
choose 0 k = 0
choose n k = choose (n-1) (k-1) * n `div` k

properDivisors n = [ x | x <- [1..(n-1)], n `mod` x == 0]

factorial n = foldr (*) 1 [1..n]

digits :: Int -> [Int]
digits n= map digitToInt $ show n

rotations :: [a] -> [[a]]
rotations xs = zipWith (++) (L.tails xs) (L.inits xs)

intStringToList :: String -> [Int]
intStringToList = map C.digitToInt
