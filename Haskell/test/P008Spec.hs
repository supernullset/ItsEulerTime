module P008Spec (solution, spec) where

import Test.Hspec
import qualified P008 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 23514624000" $
      P008.solution `shouldBe` 23514624000
