module P040Spec (solution, spec) where

import Test.Hspec
import qualified P040

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 210" $
      P040.solution `shouldBe` 210
