module P035 (
    solution
  , containsTwoOrFive
  ) where

-- The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.

-- There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

-- How many circular primes are there below one million?

import qualified Lib as L

containsTwoOrFive n = (elem 2 (L.digits n)) || (elem 5 (L.digits n))

uLimit = 1000000

-- search space can be reduced by noting that canidates cannot
-- contain an even number or 5, since such a digit will be at the end
-- of the number
-- You have to add two because the search limitation excludes 3 and 5,
-- which are some of the first matching condiditions. I
-- figure that the manual addition is better than the
-- "prettieer" logic only solution
solution = 2 + length [() | x <- [1..uLimit]
                      , False == (containsTwoOrFive x)
                      , True == (L.isCircularPrime x)]
