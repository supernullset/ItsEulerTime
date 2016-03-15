module P005 (solution) where

import Lib as L

{- problem 5
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any resolutionder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
-}
solution :: Int
solution = foldl1 lcm [1..20]

