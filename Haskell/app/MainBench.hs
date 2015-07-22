-- module MainBench where

import Lib
import Criterion.Main

import Problems (problemMap, lookupAnswer)

main = defaultMain [
   bgroup "Problems" [ bench "001" $ whnf (\x -> lookupAnswer 1) ()
                     , bench "002" $ whnf (\x -> lookupAnswer 2) ()
                     , bench "003" $ whnf (\x -> lookupAnswer 3) ()
                     , bench "004" $ whnf (\x -> lookupAnswer 4) ()
                     , bench "005" $ whnf (\x -> lookupAnswer 5) ()
                     , bench "006" $ whnf (\x -> lookupAnswer 6) ()
                     , bench "007" $ whnf (\x -> lookupAnswer 7) ()
                     , bench "008" $ whnf (\x -> lookupAnswer 8) ()
                     , bench "009" $ whnf (\x -> lookupAnswer 9) ()
                     , bench "010" $ whnf (\x -> lookupAnswer 10) ()
                     , bench "011" $ whnf (\x -> lookupAnswer 11) ()
                     , bench "011p" $ whnf (\x ->lookupAnswer 12) ()
                     , bench "012" $ whnf (\x -> lookupAnswer 13) ()
                     , bench "013" $ whnf (\x -> lookupAnswer 14) ()
                     , bench "014" $ whnf (\x -> lookupAnswer 15) ()
                     , bench "015" $ whnf (\x -> lookupAnswer 16) ()
                     , bench "016" $ whnf (\x -> lookupAnswer 17) ()
                     , bench "017" $ whnf (\x -> lookupAnswer 18) ()
                     , bench "018" $ whnf (\x -> lookupAnswer 19) ()
                     , bench "019" $ whnf (\x -> lookupAnswer 20) ()
                     , bench "020" $ whnf (\x -> lookupAnswer 21) ()
                     , bench "021" $ whnf (\x -> lookupAnswer 22) ()
                     , bench "022" $ whnf (\x -> lookupAnswer 23) ()
                     , bench "023" $ whnf (\x -> lookupAnswer 24) ()
                     , bench "024" $ whnf (\x -> lookupAnswer 25) ()
                     , bench "025" $ whnf (\x -> lookupAnswer 26) ()
                     , bench "026" $ whnf (\x -> lookupAnswer 27) ()
                     , bench "027" $ whnf (\x -> lookupAnswer 28) ()
                     ]
   ]
