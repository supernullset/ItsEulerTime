module ZeroThreeFour (main) where

-- 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.
-- Find the sum of all numbers which are equal to the sum of the factorial of their digits.
-- Note: as 1! = 1 and 2! = 2 are not sums they are not included.
import Data.Char (digitToInt)
import Lib as L

digits n= map digitToInt $ show n
-- The reason that 7*9! is the upper bound is in the number you
-- posted. An 8-digit solution is impossible, since the
-- largest possible sum of 8 factorials is 8*9! = 2903040, a
-- 7 digit number. So every 8-digit number must be greater
-- than it’s sum of factorials.
main = sum [ n | n <- [3..1000000], n == (sum $ map L.factorial (digits n))]

