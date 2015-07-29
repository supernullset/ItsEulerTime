module P030 (main) where

-- Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

-- 1634 = 1^4 + 6^4 + 3^4 + 4^4
-- 8208 = 8^4 + 2^4 + 0^4 + 8^4
-- 9474 = 9^4 + 4^4 + 7^4 + 4^4
-- As 1 = 1^4 is not a sum it is not included.

-- The sum of these numbers is 1634 + 8208 + 9474 = 19316.

-- Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

import Data.Char (digitToInt)

isSumOfFifthPower n = n == (foldl (\acc x ->acc + x^5) 0 $ map (toInteger . digitToInt) (show n))

-- -- 1000000 is my arbitrary stopping point
limit = 1000000
-- 1 is not included
main = sum $ filter isSumOfFifthPower [2..limit]

