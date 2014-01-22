{- problem 5
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
-}
{-
*Step 1: generate an infinite list of Ints
Step 2: set constraints for n mod [a..b] == 0 where a,b > 0

*Not needed, found prelude function lcm
-}

module Main where
main :: IO()
main =print $ foldl1 lcm [1..20]