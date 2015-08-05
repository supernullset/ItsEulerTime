module Main where

import Control.Monad
import System.Environment as Sys
import System.Exit as E
import Options.Applicative

import Problems (problemMap, lookupAnswer, numberOfProblems)

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
                                   showAnswers $ map lookupAnswer [1..numberOfProblems]
                               | otherwise = do
                                   showAnswers $ map lookupAnswer ps
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
