module Main where

main :: IO()
main =
    print (sum [x | x <- takeWhile (<= 4000000) fibs, even x])
        where
          fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
