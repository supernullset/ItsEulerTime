module ZeroZeroFiveSpec (main, spec) where

import Test.Hspec
import qualified ZeroZeroFive (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 232792560" $
      ZeroZeroFive.main `shouldBe` 232792560

