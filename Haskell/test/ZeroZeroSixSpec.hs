module ZeroZeroSixSpec (main, spec) where

import Test.Hspec
import qualified ZeroZeroSix (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 25164150" $
      ZeroZeroSix.main `shouldBe` 25164150
