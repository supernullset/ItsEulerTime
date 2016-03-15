module P030Spec (solution, spec) where

import Test.Hspec
import qualified P030 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 443839" $
      P030.solution `shouldBe` 443839
