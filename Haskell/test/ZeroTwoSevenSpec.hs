module ZeroTwoSevenSpec (main, spec) where

import Test.Hspec
import qualified ZeroTwoSeven (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of -59231" $
      ZeroTwoSeven.main `shouldBe` (-59231)
