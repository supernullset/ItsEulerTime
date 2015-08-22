module Problems (
    Answer(..)
  , lookupAnswer
  , numToStr
  , numberOfProblems
  , problemMap
  , problemList
  , solvedProblems
  ) where

-- problems
import qualified P001 (main)
import qualified P002 (main)
import qualified P003 (main)
import qualified P004 (main)
import qualified P005 (main)
import qualified P006 (main)
import qualified P007 (main)
import qualified P008 (main)
import qualified P009 (main)
import qualified P010 (main)
import qualified P011 (main)
import qualified P012 (main)
import qualified P013 (main)
import qualified P014 (main)
import qualified P015 (main)
import qualified P016 (main)
import qualified P017 (main)
import qualified P018 (main)
import qualified P019 (main)
import qualified P020 (main)
import qualified P021 (main)
import qualified P022 (main)
import qualified P023 (main)
import qualified P024 (main)
import qualified P025 (main)
import qualified P026 (main)
import qualified P027 (main)
import qualified P028 (main)
import qualified P029 (main)
import qualified P030 (main)
import qualified P031 (main)
import qualified P032 (main)
import qualified P033 (main)
import qualified P034 (main)
import qualified P035 (main)
import qualified P036 (main)
import qualified P037 (main)
import qualified P038 (main)
import qualified P039 (main)
import qualified P040 (main)
import qualified P041 (main)
import qualified P042 (main)
import qualified P043 (main)

import qualified Data.Map.Lazy as Map
import Text.Printf (printf)

data Answer = Answer {
    number :: Int
  , answer :: String
  }

instance Show Answer where
  show (Answer n a) = "Problem " ++ (numToStr n) ++ ": " ++ a

numToStr :: Int -> String
numToStr a = printf "%03d" a

lookupAnswer :: Int -> Answer
lookupAnswer p = problemMap Map.! p

solvedProblems :: [Int]
solvedProblems = [1..(length problemList)]

problemMap :: Map.Map Int Answer
problemMap = Map.fromList problemList

numberOfProblems = length problemList

problems = [ show P001.main
           , show P002.main
           , show P003.main
           , show P004.main
           , show P005.main
           , show P006.main
           , show P007.main
           , show P008.main
           , show P009.main
           , show P010.main
           , show P011.main
           , show P012.main
           , show P013.main
           , show P014.main
           , show P015.main
           , show P016.main
           , show P017.main
           , show P018.main
           , show P019.main
           , show P020.main
           , show P021.main
           , show P022.main
           , show P023.main
           , show P024.main
           , show P025.main
           , show P026.main
           , show P027.main
           , show P028.main
           , show P029.main
           , show P030.main
           , show P031.main
           , show P032.main
           , show P033.main
           , show P034.main
           , show P035.main
           , show P036.main
           , show P037.main
           , show P038.main
           , show P039.main
           , show P040.main
           , show P041.main
           , show P042.main
           , show P043.main
           ]

problemList = map (\(i, a) -> (i, Answer i a)) $ zip [1..] problems
