module Main where

import Control.Monad
import System.Environment as Sys
import System.Exit as E
import Options.Applicative

import Problems (problemMap, EulerAnswer(..), lookupProblem)

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
                                   showAnswers $ map lookupProblem [1..21]
                               | otherwise = do
                                   showAnswers $ map lookupProblem ps
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
