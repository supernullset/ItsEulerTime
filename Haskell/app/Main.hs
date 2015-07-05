module Main where

import Problems as P
import Control.Monad

main = do
  mapM_ (\(x,y) -> putStrLn $ "Problem " ++ x ++ ": " ++ y) [
      ("001", show $ P.zeroZeroOne)
    , ("002", show $ P.zeroZeroTwo)
    , ("003", show $ P.zeroZeroThree)
    , ("004", show $ P.zeroZeroFour)
    , ("005", show $ P.zeroZeroFive)
    , ("006", show $ P.zeroZeroSix)
    , ("007", show $ P.zeroZeroSeven)
    ]

