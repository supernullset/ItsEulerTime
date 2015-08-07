module P039 (main) where

-- If p is the perimeter of a right angle triangle with integral
-- length sides, {a,b,c}, there are exactly three solutions for p =
-- 120.

-- {20,48,52}, {24,45,51}, {30,40,50}

-- For which value of p ≤ 1000, is the number of solutions maximised?

import qualified Lib as L
import Data.List (elemIndex, sort, group)

-- extract solution from array
main = head $ permutationsOfPerimeters !! maxIndex
  where
    -- uses https://en.wikipedia.org/wiki/Pythagorean_triple formulas
    -- to generate perimeters of closed triples
    possiblePerimeters = [ p | n <- [1..floor (sqrt 1000)] -- only look up to sqrt of p max
                             , m <- [n+1..floor (sqrt 1000)] -- only look up to sqrt of p max from n, 
                             , even n || even m -- only n OR m can be even, m -n must be odd
                             , L.isCoprime n m == True -- gcd of n and m must be 1
                             , let a = m^2 - n^2 -- first condition of euclids method
                             , let b = 2 * m * n -- second condition of euclids method
                             , let c = m^2 + n^2 -- third condition of euclids method
                             , let p = a + b + c -- calculate perimeter
                             , p <= 1000         -- perimeter must be less than 1000
                             ]
    -- calculate the number of ways that a perimeter can be generated
    permutationsOfPerimeters = group $ sort [n*p | p <- possiblePerimeters
                                                 , n <- [1..1000 `div` p]]
    counts = map length permutationsOfPerimeters

    -- get the index of the maximum element
    Just maxIndex = elemIndex (maximum counts) counts
