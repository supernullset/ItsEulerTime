module Main where

--step 1: creats an isPrime Int -> bool
--step 2: create a factors function Int -> [Int]
--step 3: curry
--step 4: profit?

isPrime :: Integer -> Bool
isPrime n = null [x | x <- [2..(floor(sqrt(fromIntegral n)))], mod n x == 0]
 
factors :: Integer -> [Integer]
factors n = [ x | x <- [1..n], mod n x == 0]


main :: IO()
main = print $ filter isPrime $ factors 600851475143
