module P023 (solution) where

-- A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

-- A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

-- As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.

-- Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.
import Lib as L
import qualified Data.IntSet as S (toAscList, fromAscList, member, map, filter, fold, IntSet(..))
import qualified Data.Set as DS

isPerfect :: Int -> Bool
isPerfect n = n == (sum $ L.properDivisors n)

isAbundant :: Int -> Bool
isAbundant n = n < (sum $ L.properDivisors n)

isDeficient :: Int -> Bool
isDeficient n = n > (sum $ L.properDivisors n)

abundantNumbers :: S.IntSet
abundantNumbers = S.fromAscList $ filter isAbundant [12..28123]

canidatesFirst :: Int -> [Int]
-- potentially drop the <= and use <
canidatesFirst n = takeWhile (\a -> a <= n) $ S.toAscList abundantNumbers

canidatesSecond :: Int -> [Int]
-- only consider the positive numbers from the subtractionp
canidatesSecond n = filter (\x-> x > 0) $ map (\x -> n - x)  $ canidatesFirst n

solutions :: Int -> DS.Set Bool
solutions n = DS.fromList $ map (\x -> S.member x abundantNumbers) $ canidatesSecond n

isAbundantSum :: Int -> Bool
isAbundantSum n = DS.member True $ solutions n

isNotAbundantSum :: Int -> Bool
isNotAbundantSum n = not $ isAbundantSum n

notAbundants = filter (\x-> isNotAbundantSum x) [1..28123]

solution :: Int
solution = foldl1 (+) $ notAbundants
