{-# LANGUAGE FlexibleContexts #-}
module SieveOfEratohenes (
  primesUpTo
  ) where

import Data.Array.Unboxed (UArray(..), array, assocs, (!), (//))


-- Taken from https://rosettacode.org/wiki/Sieve_of_Eratosthenes#Haskell
primesUpTo :: Int -> [Int]
primesUpTo m = sieve 3 (array (3,m) [(i,odd i) | i<-[3..m]] :: UArray Int Bool)
  where
    sieve p a
      | p*p > m   = 2 : [i | (i,True) <- assocs a]
      | a!p       = sieve (p+2) $ a//[(i,False) | i <- [p*p, p*p+2*p..m]]
      | otherwise = sieve (p+2) a
