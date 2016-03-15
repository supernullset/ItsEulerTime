module P033 (solution) where
-- The fraction 49/98 is a curious fraction, as an inexperienced mathematician in attempting to simplify it may incorrectly believe that 49/98 = 4/8, which is correct, is obtained by cancelling the 9s.

-- We shall consider fractions like, 30/50 = 3/5, to be trivial examples.

-- There are exactly four non-trivial examples of this type of fraction, less than one in value, and containing two digits in the numerator and denominator.

-- If the product of these four fractions is given in its lowest common terms, find the value of the denominator.

import Data.List (intersect, delete)
import Data.Char (digitToInt)
import Data.Maybe (fromJust)
import Data.Ratio (denominator)

-- the fact that I am taking the head is dangerous, and may come back
  -- to bite me
commonNumber :: Int -> Int -> Maybe Int
commonNumber x y | intersect xChars yChars == [] = Nothing
                 | otherwise = Just $ digitToInt $ head $ intersect xChars yChars
  where
    xChars = show x
    yChars = show y

isCurious num denom | num == denom = False
                    | common == Nothing = False
                    | (head $ show $ fromJust common) == '0' = False
                    | otherwise = (fromIntegral num / fromIntegral denom) == (fromIntegral rNum / fromIntegral rDenom)
   where
     rNum = fromIntegral $ digitToInt $ head $ delete (head $ show $ fromJust common) (show num)
     rDenom = fromIntegral $ digitToInt $ head $ delete (head $ show $ fromJust common) (show denom)
     common = commonNumber num denom

solution = denominator $ foldl1 (*) $ map (\(x,y) -> (fromIntegral x / fromIntegral y)) $ [(x,y)| x<-[11..99], y<-[11..99], (True == isCurious x y), x < y]
