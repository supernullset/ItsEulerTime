module Main where

import Lib
import Problems as P
import Criterion.Main

main = defaultMain [
   bgroup "Problems" [ bench "001" $ whnf P.zeroZeroOne ()
                     , bench "002" $ whnf P.zeroZeroTwo ()
                     , bench "003" $ whnf P.zeroZeroThree ()
                     , bench "004" $ whnf P.zeroZeroFour ()
                     , bench "005" $ whnf P.zeroZeroFive ()
                     , bench "006" $ whnf P.zeroZeroSix ()
                     , bench "007" $ whnf P.zeroZeroSeven ()
                     ]
   ]
