{-
The sum of the squares of the first ten natural numbers is,

12 + 22 + ... + 102 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)2 = 552 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
-}

{-
Step 1: find a way to represent the sum of the squares of a range of numbers
step2: square it, and take the difference
-}

module Main where

sumSquare :: [Int] -> Int
sumSquare [] = 0
sumSquare [x] = x * x
sumSquare (x:xs) = sumSquare [x] + sumSquare xs

squareSum :: [Int] -> Int
squareSum [] = 0
squareSum [x] = x * x
squareSum (x:xs) = (x + sum xs) ^ 2

main = do
  print (squareSum [1..100] - sumSquare [1..100])