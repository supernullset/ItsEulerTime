module Problems (
    problemMap
  , Answer(..)
  , lookupAnswer
  , numToStr
  , solvedProblems
  ) where

import qualified Data.Map.Lazy as Map
import Text.Printf (printf)

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

problemMap = Map.fromList problemList

problemList = [  (1,  Answer 1   $ show P001.main)
               , (2,  Answer 2   $ show P002.main)
               , (3,  Answer 3   $ show P003.main)
               , (4,  Answer 4   $ show P004.main)
               , (5,  Answer 5   $ show P005.main)
               , (6,  Answer 6   $ show P006.main)
               , (7,  Answer 7   $ show P007.main)
               , (8,  Answer 8   $ show P008.main)
               , (9,  Answer 9   $ show P009.main)
               , (10, Answer 10  $ show P010.main)
               , (11, Answer 11  $ show P011.main)
               , (12, Answer 12  $ show P012.main)
               , (13, Answer 13  $ show P013.main)
               , (14, Answer 14  $ show P014.main)
               , (15, Answer 15  $ show P015.main)
               , (16, Answer 16  $ show P016.main)
               , (17, Answer 17  $ show P017.main)
               , (18, Answer 18  $ show P018.main)
               , (19, Answer 19  $ show P019.main)
               , (20, Answer 20  $ show P020.main)
               , (21, Answer 21  $ show P021.main)
               , (22, Answer 22  $ show P022.main)
               , (23, Answer 23  $ show P023.main)
               , (24, Answer 24  $ show P024.main)
               , (25, Answer 25  $ show P025.main)
               , (26, Answer 26  $ show P026.main)
               , (27, Answer 27  $ show P027.main)
               , (28, Answer 28  $ show P028.main)
               , (29, Answer 29  $ show P029.main)
               , (30, Answer 30  $ show P030.main)
               , (31, Answer 31  $ show P031.main)
               , (32, Answer 32  $ show P032.main)
               , (33, Answer 33  $ show P033.main)
               , (34, Answer 34  $ show P034.main)
               , (35, Answer 35  $ show P035.main)
               ]
