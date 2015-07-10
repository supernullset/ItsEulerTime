module ZeroOneThree (main) where
import System.IO
import Data.List
import Data.Char

{-
Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.
from /related-files/problem-13.txt
-}


-- writtenDigits :: (Integral a) => a -> [a]
-- writtenDigits = map (fromIntegral . digitToInt) . show . abs

{-
  fromHandle <- openFile "related-files/problem13.txt" ReadMode
  contents <- hGetContents fromHandle

  let strnums = lines contents
  let numstrs = map (\x -> abs $ read x :: Int) strnums
  let summed = sum numstrs
  let written = writtenDigits summed
  let taken = (take 10 written)
--  let summed = map sum written
--  let numresult = sum summed
--  let strresult = read summed :: String

  print summed

  hClose fromHandle
-}

import System.IO.Unsafe (unsafePerformIO)

main = do
  numbers <- (readFile "src/extras/013.txt")
  return $ take 10 . show . sum $ map (\x -> read x :: Integer) $ lines numbers


