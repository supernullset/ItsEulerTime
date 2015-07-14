module Main where

import Control.Monad
import Text.Printf (printf)
import qualified Data.Map.Lazy as Map
import System.Environment as Sys
import System.Exit as E
import Options.Applicative

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
import qualified ZeroOneSeven (main)
import qualified ZeroOneEight (main)
import qualified ZeroOneNine (main)
import qualified ZeroTwoZero (main)
import qualified ZeroTwoOne (main)


problems = Map.fromList [ (1, show ZeroZeroOne.main)
                        , (2, show ZeroZeroTwo.main)
                        , (3, show ZeroZeroThree.main)
                        , (4, show ZeroZeroFour.main)
                        , (5, show ZeroZeroFive.main)
                        , (6, show ZeroZeroSix.main)
                        , (7, show ZeroZeroSeven.main)
                        , (8, show ZeroZeroEight.main)
                        , (9, show ZeroZeroNine.main)
                        , (10, show ZeroOneZero.main)
                        , (11, show ZeroOneOne.main)
                        , (12, show ZeroOneTwo.main)
                        , (13, show ZeroOneThree.main)
                        , (14, show ZeroOneFour.main)
                        , (15, show ZeroOneFive.main)
                        , (16, show ZeroOneSix.main)
                        , (17, show ZeroOneSeven.main)
                        , (18, show ZeroOneEight.main)
                        , (19, show ZeroOneNine.main)
                        , (20, show ZeroTwoZero.main)
                        , (21, show ZeroTwoOne.main)
           ]

data Instruction = Instruction {
  problemList :: [Int]
  , all :: Bool
  }

instructionParser :: Parser Instruction
instructionParser = Instruction
                    <$> option auto
                      ( long "problems"
                        <> short 'p'
                        <> metavar "PROBLEMS"
                        <> help "list of problems to run" )
                    <*> switch
                      ( long "all"
                        <> help "run all problems currently implemented in numerical order" )

runProblems :: Instruction -> IO ()
runProblems (Instruction ps a) | a == True  = do
                                   showAnswers $ map (\x -> (x, problems Map.! x)) [1..21] 
                               | otherwise = do
                                   showAnswers $ map (\x -> (x, problems Map.! x)) ps
  where
    showAnswers as = do
      mapM_ (\(x,y) -> putStrLn $ "Problem " ++ (numToStr x) ++ ": " ++ y) as
      E.exitSuccess

main = execParser opts >>= runProblems
  where
    opts = info (helper <*> instructionParser)
           ( fullDesc
             <> progDesc "Run the given project Euler problems"
             <> header "euler - a runner for Project Euler solutions"
           )


numToStr :: Int -> String
numToStr a = printf "%03d" a
