module Main where

import Problems as P
import Control.Monad
import Text.Printf (printf)
import qualified Data.Map.Lazy as Map
import System.Environment as Sys
import System.Exit as E

problems = Map.fromList [ (1, show $ P.zeroZeroOne)
                        , (2, show $ P.zeroZeroTwo)
                        , (3, show $ P.zeroZeroThree)
                        , (4, show $ P.zeroZeroFour)
                        , (5, show $ P.zeroZeroFive)
                        , (6, show $ P.zeroZeroSix)
                        , (7, show $ P.zeroZeroSeven)
           ]

main = do
  args <- Sys.getArgs
  if length args < 1
    then do
      putStrLn "Please provide an integer argument"
      E.exitFailure
    else do
      if args == ["--all"]
        then do
          putStrLn "No support for all problems yet"
          E.exitSuccess
        else do
          let requestedProblems = map (\x -> read x :: Int) args
          let problemsToSolve = map (\x -> (x, problems Map.! x)) requestedProblems
          mapM_ (\(x,y) -> putStrLn $ "Problem " ++ (numToStr x) ++ ": " ++ y) problemsToSolve

numToStr :: Int -> String
numToStr a = printf "%03d" a
