module Main where

import Problems as P
import Control.Monad
import Text.Printf (printf)

main = do
  mapM_ (\(x,y) -> putStrLn $ "Problem " ++ (numToStr x) ++ ": " ++ y) [
      (1, show $ P.zeroZeroOne)
    , (2, show $ P.zeroZeroTwo)
    , (3, show $ P.zeroZeroThree)
    , (4, show $ P.zeroZeroFour)
    , (5, show $ P.zeroZeroFive)
    , (6, show $ P.zeroZeroSix)
    , (7, show $ P.zeroZeroSeven)
    ]

numToStr :: Int -> String
numToStr a = printf "%03d" a
