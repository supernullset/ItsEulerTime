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
import P001
import P002
import P003
import P004
import P005
import P006
import P007
import P008
import P009
import P010
import P011
import P012
import P013
import P014
import P015
import P016
import P017
import P018
import P019
import P020
import P021
import P022
import P023
import P024
import P025
import P026
import P027
import P028
import P029
import P030
import P031
import P032
import P033
import P034
import P035
import P036
import P037
import P038
import P039
import P040
import P041
import P042
import P043
import P044
import P045
import P046
import P047

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

problems = [ show P001.solution
           , show P002.solution
           , show P003.solution
           , show P004.solution
           , show P005.solution
           , show P006.solution
           , show P007.solution
           , show P008.solution
           , show P009.solution
           , show P010.solution
           , show P011.solution
           , show P012.solution
           , show P013.solution
           , show P014.solution
           , show P015.solution
           , show P016.solution
           , show P017.solution
           , show P018.solution
           , show P019.solution
           , show P020.solution
           , show P021.solution
           , show P022.solution
           , show P023.solution
           , show P024.solution
           , show P025.solution
           , show P026.solution
           , show P027.solution
           , show P028.solution
           , show P029.solution
           , show P030.solution
           , show P031.solution
           , show P032.solution
           , show P033.solution
           , show P034.solution
           , show P035.solution
           , show P036.solution
           , show P037.solution
           , show P038.solution
           , show P039.solution
           , show P040.solution
           , show P041.solution
           , show P042.solution
           , show P043.solution
           , show P044.solution
           , show P045.solution
           , show P046.solution
           , show P047.solution
           ]

problemList = map (\(i, a) -> (i, Answer i a)) $ zip [1..] problems
