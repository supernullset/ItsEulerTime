module P015Spec (solution, spec) where

import Test.Hspec
import qualified P015 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 137846528820" $
      P015.solution `shouldBe` 137846528820

