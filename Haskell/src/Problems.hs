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
import qualified ZeroTwoFive (main)
import qualified ZeroTwoSix (main)
import qualified ZeroTwoSeven (main)
import qualified ZeroTwoEight (main)
import qualified ZeroTwoNine (main)
import qualified ZeroThreeZero (main)
import qualified ZeroThreeOne (main)
import qualified ZeroThreeTwo (main)
import qualified ZeroThreeThree (main)
import qualified ZeroThreeFour (main)
import qualified ZeroThreeFive (main)

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

problemList = [ (1,  Answer 1   $ show ZeroZeroOne.main)
               , (2,  Answer 2   $ show ZeroZeroTwo.main)
               , (3,  Answer 3   $ show ZeroZeroThree.main)
               , (4,  Answer 4   $ show ZeroZeroFour.main)
               , (5,  Answer 5   $ show ZeroZeroFive.main)
               , (6,  Answer 6   $ show ZeroZeroSix.main)
               , (7,  Answer 7   $ show ZeroZeroSeven.main)
               , (8,  Answer 8   $ show ZeroZeroEight.main)
               , (9,  Answer 9   $ show ZeroZeroNine.main)
               , (10, Answer 10  $ show ZeroOneZero.main)
               , (11, Answer 11  $ show ZeroOneOne.main)
               , (12, Answer 12  $ show ZeroOneTwo.main)
               , (13, Answer 13  $ show ZeroOneThree.main)
               , (14, Answer 14  $ show ZeroOneFour.main)
               , (15, Answer 15  $ show ZeroOneFive.main)
               , (16, Answer 16  $ show ZeroOneSix.main)
               , (17, Answer 17  $ show ZeroOneSeven.main)
               , (18, Answer 18  $ show ZeroOneEight.main)
               , (19, Answer 19  $ show ZeroOneNine.main)
               , (20, Answer 20  $ show ZeroTwoZero.main)
               , (21, Answer 21  $ show ZeroTwoOne.main)
               , (22, Answer 22  $ show ZeroTwoTwo.main)
               , (23, Answer 23  $ show ZeroTwoThree.main)
               , (24, Answer 24  $ show ZeroTwoFour.main)
               , (25, Answer 25  $ show ZeroTwoFive.main)
               , (26, Answer 26  $ show ZeroTwoSix.main)
               , (27, Answer 27  $ show ZeroTwoSeven.main)
               , (28, Answer 28  $ show ZeroTwoEight.main)
               , (29, Answer 29  $ show ZeroTwoNine.main)
               , (30, Answer 30  $ show ZeroThreeZero.main)
               , (31, Answer 31  $ show ZeroThreeOne.main)
               , (32, Answer 32  $ show ZeroThreeTwo.main)
               , (33, Answer 33  $ show ZeroThreeThree.main)
               , (34, Answer 34  $ show ZeroThreeFour.main)
               , (35, Answer 35  $ show ZeroThreeFive.main)
               ]
