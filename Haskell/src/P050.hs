module P050 (
  solution
  ) where

import Lib (primesUpTo, isPrime)
import Data.List (tails)

-- The prime 41, can be written as the sum of six consecutive primes:

-- 41 = 2 + 3 + 5 + 7 + 11 + 13
-- This is the longest sum of consecutive primes that adds to a prime below one-hundred.

-- The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, and is equal to 953.

-- Which prime, below one-million, can be written as the sum of the most consecutive primes?

type Primes = [Int]
type Acc = Int -- Accumulated sum of primes
type Count = Int -- Count of primes in summation
type Limit = Int -- Limit of the sum


sums :: (Count, Acc) -> [Int] -> [(Count, Acc)]
sums start xs = scanl step start xs
  where step (n, acc) x = (n+1, acc+x)

primeSums :: (Count, Acc) -> Limit -> [Int] -> [ (Count, Acc) ]
primeSums start limit ps = filter (isPrime . toInteger . snd) $ takeWhile ((< limit) . snd) $ sums start ps

-- Searches through the primes from an initial starting point and recursively searches further ahead
-- to find the best possible solution
search :: Primes -> (Count, Acc) -> (Count, Acc)
search [] val = val
search xs val@(index, acc)
  | currentTotal >= limit = val
  | otherwise = search (tail xs) val'
  where
    limit = 1000000
    (lowerPrimes, upperPrimes) = splitAt (index+1) xs -- break future search space so as to not start at the beginning again
    currentTotal = sum lowerPrimes
    val' = maximum $ [val] ++ (primeSums (index+1, currentTotal) limit upperPrimes)


-- This is "assumey" with respect to the primes values. as a TODO: I really should implement my own sieve to make sure I understand it better
solution = show $ snd $ search (primesUpTo 1000000) (0,0)
