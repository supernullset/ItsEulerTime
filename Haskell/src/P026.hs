module P026 (solution) where

-- A unit fraction contains 1 in the numerator. The decimal
-- representation of the unit fractions with denominators 2 to 10 are
-- given:

-- 1/2= 0.5
-- 1/3= 0.(3)
-- 1/4= 0.25
-- 1/5= 0.2
-- 1/6= 0.1(6)
-- 1/7= 0.(142857)
-- 1/8= 0.125
-- 1/9= 0.(1)
-- 1/10= 0.1
-- Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be seen that 1/7 has a 6-digit recurring cycle.

-- Find the value of d < 1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.

import qualified Lib as L
import Data.List (inits, maximumBy)
import Data.Function (on)

-- Did some research on decimal expansion, and it
-- turns out that calculating the period of a rational is a
-- known formula, the property is related to Euler's Toitent function

-- you only need to worry about testing the primes, because the
-- constraints of the problem (periodic decimals that start AT the
-- decimal), are only going to come up for prime denominators.
-- I did lots of reading at the link below
-- http://mathworld.wolfram.com/DecimalExpansion.html
solution = fst $ maximumBy (compare `on` snd) $ zip numbersToCheck $ map period numbersToCheck

-- primes under 1000 (this is super hacky)
-- I disregard 2,3,5 because the formula does not work for 2,5 and 1/3
-- has a period of 1, eg. not the longest
numbersToCheck = drop 3 $ take 168 L.primes

-- Takes the DENOMINATOR of a rational, and finds the period.
-- only works for numbers that do not have 2 or 5 as factors
period :: Integer -> Integer
period d = head $ filter (\x -> 1 == (10^x) `mod` d) [1..]


