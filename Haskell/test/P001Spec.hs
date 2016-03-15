module P001Spec (solution, spec) where

import Test.Hspec
import qualified P001 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 233168" $
      P001.solution `shouldBe` 233168
