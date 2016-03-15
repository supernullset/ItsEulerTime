module P004 (solution) where

import Lib as L

-- A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
-- Find the largest palindrome made from the product of two 3-digit numbers.


-- determines multiples of xy for all x,y < 1000
multiples :: [String]
multiples = [ show $ fromIntegral x*y | x <- [1..999], y <- [1..999]]

solution :: Int
solution = result
  where
    result = maximum (map (\y -> read y :: Int) palindromes)
    palindromes = filter (\x -> L.isPalendrome x) $ reverse multiples

