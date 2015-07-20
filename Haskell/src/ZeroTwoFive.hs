module ZeroTwoFive (main) where

-- The Fibonacci sequence is defined by the recurrence relation:

-- Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
-- Hence the first 12 terms will be:

-- F1 = 1
-- F2 = 1
-- F3 = 2
-- F4 = 3
-- F5 = 5
-- F6 = 8
-- F7 = 13
-- F8 = 21
-- F9 = 34
-- F10 = 55
-- F11 = 89
-- F12 = 144
-- The 12th term, F12, is the first term to contain three digits.

-- What is the index of the first term in the Fibonacci sequence to
-- contain 1000 digits?

import qualified Data.Matrix as M (fromLists, multStd, (!), Matrix(..))

-- This is the closed form matrix solution. eulerMatrix to the Nth
-- yields the nth and n+1th fib number

eulerMatrix = M.fromLists [
    [1, 1]
  , [1, 0]
  ]

getSuccesiveFibs :: M.Matrix Integer -> [Integer]
getSuccesiveFibs m = [m M.! (1,1)]

fibMatrixes :: [M.Matrix Integer]
fibMatrixes = scanl1 M.multStd $ repeat eulerMatrix

fibs :: [Integer]
fibs = concatMap getSuccesiveFibs $ fibMatrixes

main :: Integer
-- add one since im starting my fibs at the second 1
main = 1 + head [i | (i,x) <- zip [1..] fibs, length (show x) == 1000 ]
