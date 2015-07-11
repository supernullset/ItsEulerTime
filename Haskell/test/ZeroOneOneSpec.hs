module ZeroOneOneSpec (main, spec) where

import Test.Hspec
import qualified ZeroOneOne (main, parMain)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 70600674" $
      ZeroOneOne.main `shouldBe` 70600674

  describe "parMain" $ do
    it "must yield the correct answer of 70600674" $
      ZeroOneOne.parMain `shouldBe` 70600674
