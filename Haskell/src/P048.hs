module P048 (
  solution
  ) where

-- The series, 11 + 22 + 33 + ... + 1010 = 10405071317.
-- Find the last ten digits of the series, 11 + 22 + 33 + ... + 10001000.

solution = reverse $ take 10 $ reverse $ show $ sum $ map (\x -> x^x) [1..1000]
