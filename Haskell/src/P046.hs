module P046 (
  solution
  , oddComposites
  ) where

--It was proposed by Christian Goldbach that every odd composite number can be written as the sum of a prime and twice a square.
--
--9 = 7 + 2×12
--15 = 7 + 2×22
--21 = 3 + 2×32
--25 = 7 + 2×32
--27 = 19 + 2×22
--33 = 31 + 2×12
--
--It turns out that the conjecture was false.
--
--What is the smallest odd composite that cannot be written as the sum of a prime and twice a square?

import Data.Numbers.Primes (isPrime)

composites = filter (not . isPrime) [3..]

oddComposites = filter (odd) composites

conjecture n = any isPrime (takeWhile (>0) $ map (formula) [1..])
  where
    formula i = n - 2*i*i
    
solution = firstBadComposite
  where
    firstBadComposite = head $ filter (not . conjecture) oddComposites
