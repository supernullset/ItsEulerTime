module ZeroZeroThreeSpec (main, spec) where

import Test.Hspec
import qualified ZeroZeroThree (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 6857" $
      ZeroZeroThree.main `shouldBe` 6857

