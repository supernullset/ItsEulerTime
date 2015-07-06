module ZeroZeroFour (main) where

import Lib as L

-- A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
-- Find the largest palindrome made from the product of two 3-digit numbers.
main :: Int
main = result
  where
    result = maximum (map (\y -> read y :: Int) palindromes)
    palindromes = filter (\x -> L.isPalendrome x) $ reverse L.multiples

