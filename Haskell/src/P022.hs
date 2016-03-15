module P022 (solution) where

import System.IO.Unsafe (unsafePerformIO)
import System.IO (readFile)
import qualified Data.Map.Strict as Map
import Data.List (sort)

sol = do
  let numVals = Map.fromList $ zip ['A'..'Z'] [1..26]
  names <- readFile "src/extras/022.txt"
  let ns = sort $ read (['['] ++ names ++ [']']) :: [String]
  let intNs = map (\l -> sum $ map (\x -> numVals Map.! x) l) ns
  return $ sum $ zipWith (*) intNs [1..]

-- TODO: This is super bad
solution = unsafePerformIO sol
