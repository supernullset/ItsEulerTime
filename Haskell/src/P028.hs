module P028 (solution) where

-- Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:

-- 21 22 23 24 25
-- 20  7  8  9 10
-- 19  6  1  2 11
-- 18  5  4  3 12
-- 17 16 15 14 13

-- It can be verified that the sum of the numbers on the diagonals is 101.

-- What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?

-- each box has 4 corners, each corner increases by 2 each time
-- at the second "level" everything starts to follow a power of 2
-- rule, 2^(level+1) for the length of the box
sizeOfSpiral = 1001
solution = 1 + (sum $ scanl1 (+) $ concatMap (replicate 4) [2,4..(sizeOfSpiral-1)])
