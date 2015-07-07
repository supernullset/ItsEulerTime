module MainBench where

import Lib
import Criterion.Main

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


main = defaultMain [
   bgroup "Problems" [ bench "001" $ whnf (\x -> ZeroZeroOne.main) ()
                     , bench "002" $ whnf (\x -> ZeroZeroTwo.main) ()
                     , bench "003" $ whnf (\x -> ZeroZeroThree.main) ()
                     , bench "004" $ whnf (\x -> ZeroZeroFour.main) ()
                     , bench "005" $ whnf (\x -> ZeroZeroFive.main) ()
                     , bench "006" $ whnf (\x -> ZeroZeroSix.main) ()
                     , bench "007" $ whnf (\x -> ZeroZeroSeven.main) ()
                     , bench "008" $ whnf (\x -> ZeroZeroEight.main) ()
                     , bench "009" $ whnf (\x -> ZeroZeroNine.main) ()
                     , bench "010" $ whnf (\x -> ZeroOneZero.main) ()

                     ]
   ]
