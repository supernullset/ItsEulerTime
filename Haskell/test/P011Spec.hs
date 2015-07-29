module P011Spec (main, spec) where

import Test.Hspec
import qualified P011 (main, parMain)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 70600674" $
      P011.main `shouldBe` 70600674

  describe "parMain" $ do
    it "must yield the correct answer of 70600674" $
      P011.parMain `shouldBe` 70600674
