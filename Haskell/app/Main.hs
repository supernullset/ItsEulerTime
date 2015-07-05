module Main where

import Problems as P
import Control.Monad

main = do
  mapM_ (\(x,y) -> putStrLn $ "Problem " ++ x ++ ": " ++ y) [
      ("001", show $ P.zeroZeroOne ())
    , ("002", show $ P.zeroZeroTwo ())
    , ("003", show $ P.zeroZeroThree ())
    -- , ("004", P.zeroZeroFour ())
    -- , ("005", P.zeroZeroFive ())
    -- , ("006", P.zeroZeroSix ())
    -- , ("007", P.zeroZeroSeven ())
    ]

