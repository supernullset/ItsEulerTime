module ZeroThreeFive (main) where

-- The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.

-- There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

-- How many circular primes are there below one million?

import Lib as L
import Data.List (init, nub)

-- TODO: This can probably get cleaned up very nicely
rots n = init $ map (\c -> read (foldl (\acc x -> acc ++ (show x)) "" c) :: Integer) $ L.rotations (L.intStringToList $ show n)

isCircularPrime n = [True] == (nub $ map L.isPrime (rots n))

uLimit = 1000000

main = length [() | x <- [1..uLimit]
                  , True == (isCircularPrime x)]
