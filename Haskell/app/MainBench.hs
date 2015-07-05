module MainBench where

import Lib
import Problems as P
import Criterion.Main

main = defaultMain [
   bgroup "Problems" [ bench "001" $ whnf (\x -> P.zeroZeroOne) ()
                     , bench "002" $ whnf (\x -> P.zeroZeroTwo) ()
                     , bench "003" $ whnf (\x -> P.zeroZeroThree) ()
                     , bench "004" $ whnf (\x -> P.zeroZeroFour) ()
                     , bench "005" $ whnf (\x -> P.zeroZeroFive) ()
                     , bench "006" $ whnf (\x -> P.zeroZeroSix) ()
                     , bench "007" $ whnf (\x -> P.zeroZeroSeven) ()
                     ]
   ]
