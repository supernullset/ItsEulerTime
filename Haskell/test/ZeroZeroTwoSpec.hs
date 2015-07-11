module ZeroZeroTwoSpec (main, spec) where

import Test.Hspec
import qualified ZeroZeroTwo (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 4613732" $
      ZeroZeroTwo.main `shouldBe` 4613732

