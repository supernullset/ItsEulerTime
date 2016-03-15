module P042 (solution) where

-- The nth term of the sequence of triangle numbers is given by, tn = ½n(n+1); so the first ten triangle numbers are:

-- 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

-- By converting each letter in a word to a number corresponding to its alphabetical position and adding these values we form a word value. For example, the word value for SKY is 19 + 11 + 25 = 55 = t10. If the word value is a triangle number then we shall call the word a triangle word.

-- Using words.txt (right click and 'Save Link/Target As...'), a 16K text file containing nearly two-thousand common English words, how many are triangle words?

import Data.List (elemIndex)
import System.IO.Unsafe (unsafePerformIO)

triangleNumbers = map triangleGenerator [1..300]
  where triangleGenerator n = floor $ (n * (n+1)) / 2

wordToValue :: [Char] -> Int
wordToValue [] = 0
wordToValue (x:xs) = (findIndex x) + wordToValue xs
  where
    findIndex x = case elemIndex x ['A'..'Z'] of
      Just i -> i + 1 -- index by zero
      Nothing -> 0

isATriangle :: Int -> Bool
isATriangle i =  i `elem` triangleNumbers

sol = do
  rawWords <- readFile "src/extras/042.txt"
  let words = read $ "["++rawWords++"]" :: [String]
  let s = length $ filter (isATriangle . wordToValue) words
  return s

solution = unsafePerformIO sol
