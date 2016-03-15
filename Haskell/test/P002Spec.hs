module P002Spec (solution, spec) where

import Test.Hspec
import qualified P002 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 4613732" $
      P002.solution `shouldBe` 4613732

