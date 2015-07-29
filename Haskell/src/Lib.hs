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

-- determines if a number is Prime
isPrime :: Integer -> Bool
isPrime = P.isPrime

-- determines factors of an integer
factors :: Integer -> [Integer]
factors n = [ x | x <- [1..n], mod n x == 0]

-- determines if string is palendrome such as "121"
isPalendrome :: String -> Bool
isPalendrome x | x == reverse x = True
               | otherwise = False

-- determines multiples of xy for all x,y < 1000
-- TODO: why is this here?
multiples :: [String]
multiples = [ show $ fromIntegral x*y | x <- [1..999], y <- [1..999]]

-- determines the sum of the square or all numebrs in a list
sumSquare :: [Int] -> Int
sumSquare [] = 0
sumSquare [x] = x * x
sumSquare (x:xs) = sumSquare [x] + sumSquare xs

--determines the square of the sum of all numbers in a list
squareSum :: [Int] -> Int
squareSum [] = 0
squareSum [x] = x * x
squareSum (x:xs) = (x + sum xs) ^ 2

-- determines the prime factors of a number
primeFactors :: Integer -> [Integer]
primeFactors = P.primeFactors

-- returns an infinite list of prime numbers
primes :: [Integer]
primes = P.primes

-- returns groups of n elements from a list
groupsOf :: Int -> [a] -> [[a]]
groupsOf _ [] = []
groupsOf n xs = take n xs : groupsOf n ( tail xs )

-- returns binomial coefficents
choose n 0 = 1
choose 0 k = 0
choose n k = choose (n-1) (k-1) * n `div` k

-- returns the proper divisors of an Int
properDivisors :: Int -> [Int]
properDivisors n = [ x | x <- [1..(n-1)], n `mod` x == 0]

-- Simple factorial implementation
factorial :: Integer -> Integer
factorial n = foldr (*) 1 [1..n]

-- returns the digits in a number
digits :: Integer -> [Integer]
digits n = map (fromIntegral .digitToInt) $ show n

-- returns the rotations of a list, eg [1,2] -> [[1,2],[2,1]]
rotations :: [a] -> [[a]]
rotations xs = zipWith (++) (L.tails xs) (L.inits xs)

-- takes an ints string, and turns it into a list of ints
intStringToList :: String -> [Int]
intStringToList = map C.digitToInt
