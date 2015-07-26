module ZeroThreeTwo (main) where

-- We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once; for example, the 5-digit number, 15234, is 1 through 5 pandigital.

-- The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing multiplicand, multiplier, and product is 1 through 9 pandigital.

-- Find the sum of all products whose multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital.

-- HINT: Some products can be obtained in more than one way so be sure to only include it once in your sum.

import qualified Data.IntSet as S
import Data.Char (digitToInt)
import Data.List (nub)

digits = S.fromAscList [1..9]

isPandigital :: String -> Bool
isPandigital n | length n /= 9 = False
               | otherwise = nDigits == digits
  where
    nDigits = S.fromList $ map digitToInt n

-- nub is to prevent duplicates in the product list
-- I lowered the seach space by realizig that the absolute maximum for
-- the products is 9876
-- this implies that the sum of length of m and mp are 5, meaning the
 -- search space for factors is 1-4 and 1-2 digits respectively
main = sum $ nub $ map (\(_,_,p) -> p) [(m, mp, m*mp) | m <-[1..9876]
                                                      , mp <-[1..99]
                                                      , m*mp <= 9876
                                                      , True == (isPandigital $ (show m) ++ (show mp) ++ (show (m*mp)))]
