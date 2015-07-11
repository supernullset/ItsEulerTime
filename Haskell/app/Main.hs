module Main where

import Control.Monad
import Text.Printf (printf)
import qualified Data.Map.Lazy as Map
import System.Environment as Sys
import System.Exit as E

-- problems
import qualified ZeroZeroOne (main)
import qualified ZeroZeroTwo (main)
import qualified ZeroZeroThree (main)
import qualified ZeroZeroFour (main)
import qualified ZeroZeroFive (main)
import qualified ZeroZeroSix (main)
import qualified ZeroZeroSeven (main)
import qualified ZeroZeroEight (main)
import qualified ZeroZeroNine (main)
import qualified ZeroOneZero (main)
import qualified ZeroOneOne (main)
import qualified ZeroOneTwo (main)
import qualified ZeroOneThree (main)
import qualified ZeroOneFour (main)
import qualified ZeroOneFive (main)
import qualified ZeroOneSix (main)

problems = Map.fromList [ (1, show ZeroZeroOne.main)
                        , (2, show ZeroZeroTwo.main)
                        , (3, show ZeroZeroThree.main)
                        , (4, show ZeroZeroFour.main)
                        , (5, show ZeroZeroFive.main)
                        , (6, show ZeroZeroSix.main)
                        , (8, show ZeroZeroEight.main)
                        , (9, show ZeroZeroNine.main)
                        , (10, show ZeroOneZero.main)
                        , (11, show ZeroOneOne.main)
                        , (12, show ZeroOneTwo.main)
-- TODO: zeroOneThree is IO String, breaks map :( , (13, show ZeroOneThree.main)
                        , (14, show ZeroOneFour.main)
                        , (15, show ZeroOneFive.main)
                        , (16, show ZeroOneSix.main)
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
