-- module MainBench where

import Lib
import Criterion.Main

import Problems (problemMap, lookupAnswer, numToStr, solvedProblems)

benchmark i = bench (numToStr i) $ whnf (\x -> lookupAnswer i) ()

main = defaultMain [
   bgroup "Problems" $ map benchmark solvedProblems
   ]
