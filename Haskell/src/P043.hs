module P043 (main) where

-- The number, 1406357289, is a 0 to 9 pandigital number because it is made up of each of the digits 0 to 9 in some order, but it also has a rather interesting sub-string divisibility property.

-- Let d1 be the 1st digit, d2 be the 2nd digit, and so on. In this way, we note the following:

-- d2d3d4=406 is divisible by 2
-- d3d4d5=063 is divisible by 3
-- d4d5d6=635 is divisible by 5
-- d5d6d7=357 is divisible by 7
-- d6d7d8=572 is divisible by 11
-- d7d8d9=728 is divisible by 13
-- d8d9d10=289 is divisible by 17
-- Find the sum of all 0 to 9 pandigital numbers with this property.

import qualified Lib as L

import Data.List (nub)

-- So my first pass on this was to try to filter across all 9 digit numbers to find the solution.
-- This is...not an efficent way of doing this. So I thought that since I have a well defined problem I could
-- create a generator function for potential substrings, and concat them togeather; making sure
-- that each new generator works with the new canidate.

generator :: Int -> String -> [String]
generator g "" = [show n |
                 n <- [100..999] -- We only care about 3 digit numbers
                 , n `rem` g == 0 -- ensure n is evenly divided by x
                 , False == L.hasDuplicateDigits n
                 ]

generator g s = [c:s | -- prepend a new int to each canidate
                c <- ['0'..'9'] -- c must be in 0 through 9
                , c `notElem` s -- pandigital implies that each
                                -- number must occur once
                , (read (c:(take 2 s))) `rem` g == 0 -- make sure that
                                                     -- the new number is evenly divisible by the
                                                     -- generator number
                ]

generatePandigitals :: [Int] -> [String] -> [String]
generatePandigitals [] acc = acc
generatePandigitals (x:xs) acc = generatePandigitals xs $ concatMap (generator x) acc

main :: Integer
main = sum $ map read $ generatePandigitals [17, 13, 11, 7, 5, 3, 2, 1] [""]
