module P036 (main) where

-- The decimal number, 585 = 1001001001[2] (binary), is palindromic in both
--    bases.

-- Find the sum of all numbers, less than one million, which are palindromic
--    in base 10 and base 2.

-- (Please note that the palindromic number, in either base, may not include
--    leading zeros.)

import qualified Lib as L (isPalendrome, intToBinary)

limit = 1000000

main = sum [ x | x <- [1..1000000]
               , True == (L.isPalendrome $ show x)
               , True == (L.isPalendrome $ show $ L.intToBinary x)
               ]


