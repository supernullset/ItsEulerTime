module ZeroZeroOneSpec (main, spec) where

import Test.Hspec
import qualified ZeroZeroOne (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 233168" $
      ZeroZeroOne.main `shouldBe` 233168
