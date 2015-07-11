module ZeroZeroEightSpec (main, spec) where

import Test.Hspec
import qualified ZeroZeroEight (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 23514624000" $
      ZeroZeroEight.main `shouldBe` 23514624000
