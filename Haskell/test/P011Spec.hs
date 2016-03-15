module P011Spec (solution, spec) where

import Test.Hspec
import qualified P011 (solution, parMain)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 70600674" $
      P011.solution `shouldBe` 70600674

  describe "parMain" $ do
    it "must yield the correct answer of 70600674" $
      P011.parMain `shouldBe` 70600674
