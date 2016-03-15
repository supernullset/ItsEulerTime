module P004Spec (solution, spec) where

import Test.Hspec
import qualified P004 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 906609" $
      P004.solution `shouldBe` 906609
