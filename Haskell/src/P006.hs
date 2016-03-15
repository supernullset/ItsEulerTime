module P006 (solution) where

import Lib as L

{- problem 6
The sum of the squares of the first ten natural numbers is,

12 + 22 + ... + 102 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)2 = 552 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
-}
solution :: Int
solution = squareSum [1..100] - sumSquare [1..100]

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

