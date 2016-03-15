module P037 (solution) where

-- The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left to right, and resolution prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.

-- Find the sum of the only eleven primes that are both truncatable from left to right and right to left.

-- NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.

import qualified Lib as L (primes, isPrime)
import Data.Char (digitToInt)
import Data.List (nub, inits, tails)

isTruncatable :: String -> Bool
isTruncatable s | ([True] == nub (truncatableL s)) && ([True] == nub (truncatableR s)) = True
                | otherwise = False

truncatableL :: String -> [Bool]
truncatableL x = map (\c -> L.isPrime $ fromIntegral $ (read c :: Int)) (drop 1 $ inits x)

truncatableR :: String -> [Bool]
truncatableR x = map (\c -> L.isPrime $ fromIntegral $ (read c :: Int)) (init $ tails x)

solution = sum $ take 11 [x | x <- L.primes
                        , x > 10
                        , isTruncatable (show x) == True
                        ]

