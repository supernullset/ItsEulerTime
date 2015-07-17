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
import qualified ZeroTwoTwo (main)
import qualified ZeroTwoThree (main)
import qualified ZeroTwoFour (main)

data EulerAnswer = EulerAnswer {
    number :: Int
  , answer :: String
  }

instance Show EulerAnswer where
  show (EulerAnswer n a) = "Problem " ++ (numToStr n) ++ ": " ++ a

problems = Map.fromList [ (1,   EulerAnswer 1   $ show ZeroZeroOne.main)
                         , (2,  EulerAnswer 2   $ show ZeroZeroTwo.main)
                         , (3,  EulerAnswer 3   $ show ZeroZeroThree.main)
                         , (4,  EulerAnswer 4   $ show ZeroZeroFour.main)
                         , (5,  EulerAnswer 5   $ show ZeroZeroFive.main)
                         , (6,  EulerAnswer 6   $ show ZeroZeroSix.main)
                         , (7,  EulerAnswer 7   $ show ZeroZeroSeven.main)
                         , (8,  EulerAnswer 8   $ show ZeroZeroEight.main)
                         , (9,  EulerAnswer 9   $ show ZeroZeroNine.main)
                         , (10, EulerAnswer 10  $ show ZeroOneZero.main)
                         , (11, EulerAnswer 11  $ show ZeroOneOne.main)
                         , (12, EulerAnswer 12  $ show ZeroOneTwo.main)
                         , (13, EulerAnswer 13  $ show ZeroOneThree.main)
                         , (14, EulerAnswer 14  $ show ZeroOneFour.main)
                         , (15, EulerAnswer 15  $ show ZeroOneFive.main)
                         , (16, EulerAnswer 16  $ show ZeroOneSix.main)
                         , (17, EulerAnswer 17  $ show ZeroOneSeven.main)
                         , (18, EulerAnswer 18  $ show ZeroOneEight.main)
                         , (19, EulerAnswer 19  $ show ZeroOneNine.main)
                         , (20, EulerAnswer 20  $ show ZeroTwoZero.main)
                         , (21, EulerAnswer 21  $ show ZeroTwoOne.main)
                         , (22, EulerAnswer 22  $ show ZeroTwoTwo.main)
                         , (23, EulerAnswer 23  $ show ZeroTwoThree.main)
                         , (24, EulerAnswer 24  $ show ZeroTwoFour.main)
           ]

ioProblems = Map.fromList [(22, ZeroTwoTwo.main)]

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
                                   showAnswers $ map (\x -> problems Map.! x) [1..21] 
                               | otherwise = do
                                   showAnswers $ map (\x -> problems Map.! x) ps
  where
    showAnswers as = do
      mapM_ (\x -> putStrLn $ show x) as
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
