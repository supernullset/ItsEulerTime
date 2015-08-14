module Lib
       (
         isPrime
       , isCoprime
       , factors
       , isPalendrome
       , primes
       , primeFactors
       , groupsOf
       , groupIn
       , choose
       , properDivisors
       , factorial
       , digits
       , rotations
       , isNPandigital
       , intStringToList
       , rots
       , isCircularPrime
       , intToBinary
       ) where

import Data.Char as C
import qualified Data.Numbers.Primes as P
import qualified Data.List as L (tails, inits, init, nub, sort)
import qualified Numeric as N (showIntAtBase)

-- determines if a number is Prime
isPrime :: Integer -> Bool
isPrime = P.isPrime

-- determines if numbers are coprime
isCoprime :: Integer -> Integer -> Bool
isCoprime a b = 1 == gcd a b

-- determines factors of an integer
factors :: Integer -> [Integer]
factors n = [ x | x <- [1..n], mod n x == 0]

isNPandigital :: Integer -> Bool
isNPandigital n = stringDigits == L.sort (show n)
  where
    stringN = show n
    digits = [1..length stringN]
    stringDigits = concatMap (show) digits

digitalPandigitals :: [Integer]
digitalPandigitals = filter (pandigital) [1234567890..9876543210]
  where pandigital n = "0123456789" == (L.sort $ show n)

-- determines if string is palendrome such as "121"
isPalendrome :: String -> Bool
isPalendrome x | x == reverse x = True
               | otherwise = False

-- determines the prime factors of a number
primeFactors :: Integer -> [Integer]
primeFactors = P.primeFactors

-- returns an infinite list of prime numbers
primes :: [Integer]
primes = P.primes

-- returns groups of n elements from a list, every combination 1 by 1,
-- keeps stragglers where length xs < n
groupsOf :: Int -> [a] -> [[a]]
groupsOf _ [] = []
groupsOf n xs = take n xs : groupsOf n ( tail xs )


-- returns groups of n elements from a list, n by n step, excludes stragglers
groupIn :: Int -> [a] -> [[a]]
groupIn _ [] = []
groupIn n xs | (length xs) >= n = take n xs : groupsOf n ( drop n xs )
             | otherwise = []

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

-- TODO: This can probably get cleaned up very nicely
rots n = init $ map (\c -> read (foldl (\acc x -> acc ++ (show x)) "" c) :: Integer) $ rotations (intStringToList $ show n)

isCircularPrime n = [True] == (L.nub $ map isPrime (rots n))

-- converts an int to binary representation with leading 0s removed
-- the final "" is important because the rest of the statment is of
-- type ShowS (type ShowS = String -> String). Apparently this allows
-- for quick and easy prepention
intToBinary :: Int -> Integer
intToBinary n = read $ (N.showIntAtBase 2 intToDigit) n ""

