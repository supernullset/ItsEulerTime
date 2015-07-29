module P017 (main) where

import Lib as L
import Data.Char (digitToInt)
import qualified Data.Map.Strict as Map

mkTuple w = (w, length w)

specialCases = Map.fromList [
    (0, mkTuple "")
  , (1, mkTuple "one")
  , (2, mkTuple "two")
  , (3, mkTuple "three")
  , (4, mkTuple "four")
  , (5, mkTuple "five")
  , (6, mkTuple "six")
  , (7, mkTuple "seven")
  , (8, mkTuple "eight")
  , (9, mkTuple "nine")
  , (10, mkTuple "ten")
  , (11, mkTuple "eleven")
  , (12, mkTuple "twelve")
  , (13, mkTuple "thirteen")
  , (14, mkTuple "fourteen")
  , (15, mkTuple "fifteen")
  , (16, mkTuple "sixteen")
  , (17, mkTuple "seventeen")
  , (18, mkTuple "eighteen")
  , (19, mkTuple "nineteen")
  , (20, mkTuple "twenty")
  , (30, mkTuple "thirty")
  , (40, mkTuple "forty")
  , (50, mkTuple "fifty")
  , (60, mkTuple "sixty")
  , (70, mkTuple "seventy")
  , (80, mkTuple "eighty")
  , (90, mkTuple "ninety")
  ]

getNumber n = (fst $ specialCases Map.! n)

splitDouble n = if Map.member n specialCases
                then getNumber n
                else (getNumber tens) ++ withSingle singles
  where
    sWord = show n
    tens =  10 * (digitToInt $ head sWord)
    singles = digitToInt $ last sWord
    withSingle n | n == 0 = ""
                 | otherwise = getNumber n

withAnd n | n == 0 = ""
          | otherwise = "and" ++ breakdown n
  where
    breakdown n | length (show n) == 2 = splitDouble n
                | otherwise = getNumber n

phrase :: Int -> String
phrase n | length word == 1 = getNumber n
         | length word == 2 = splitDouble n
         | length word == 3 = (getNumber (digitToInt $ head word)) ++ "hundred" ++ withAnd (read (tail word) :: Int)
  where word = show n

main = (sum $ map (\x -> length (phrase x)) [1..999]) + (length "onethousand")
