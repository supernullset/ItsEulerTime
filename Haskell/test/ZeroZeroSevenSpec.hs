module ZeroZeroSevenSpec (main, spec) where

import Test.Hspec
import qualified ZeroZeroSeven (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 104743" $
      ZeroZeroSeven.main `shouldBe` 104743
