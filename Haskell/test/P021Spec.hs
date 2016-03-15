module P021Spec (solution, spec) where

import Test.Hspec
import qualified P021 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 31626" $
      P021.solution `shouldBe` 31626
