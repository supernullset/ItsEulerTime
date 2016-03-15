module P029Spec (solution, spec) where

import Test.Hspec
import qualified P029 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 9183" $
      P029.solution `shouldBe` 9183
