module P038 (solution) where

-- Take the number 192 and multiply it by each of 1, 2, and 3:

-- 192 × 1 = 192
-- 192 × 2 = 384
-- 192 × 3 = 576
-- By concatenating each product we get the 1 to 9 pandigital, 192384576. We will call 192384576 the concatenated product of 192 and (1,2,3)

-- The same can be achieved by starting with 9 and multiplying by 1, 2, 3, 4, and 5, giving the pandigital, 918273645, which is the concatenated product of 9 and (1,2,3,4,5).

-- What is the largest 1 to 9 pandigital 9-digit number that can be
-- formed as the concatenated product of an integer with (1,2, ... ,
-- n) where n > 1?

import Data.List (sort, inits)

-- analysis:
-- Solution number starts with 9, 987654321 > 123456789
-- Initial number must have less than 5 digits. a 5 digit number
-- concatenated n times yields a number with > 9 digits

-- If initial number is 2 digit (99), concatMap *99 [1,2,3] yields an 8
-- digit number, concatMap *99 [1,2,3,4] yields a 11 digit number

-- if initial number is 3 digit (999), concatMap *999 [1,2] yields a 7
-- digit number
-- concatMap *999 [1,2,3] yields a 11 digit number

-- if initial number is 4 digit (9999), concatMap *9999 [1,2] yields a
-- 9 digit number. Winner winner

-- initial number is a 4 digit number that starts with nine, because 9
-- * 1 (the first case) yields a 9

isPandigital :: String -> Bool
isPandigital s = "123456789" == sort s

upperLimit = 987654321

concatenatedProduct :: Int -> [Int] -> String
concatenatedProduct seed rng = concatMap (\i -> show (i * seed)) rng

products = map (applyToRange . concatenatedProduct) [9000..9999]
  where
    applyToRange f = f [1, 2]

solution :: Integer
solution = read $ last $ filter isPandigital products
