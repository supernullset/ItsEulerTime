module ZeroTwoSixSpec (main, spec) where

import Test.Hspec
import qualified ZeroTwoSix (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 983" $
      ZeroTwoSix.main `shouldBe` 983
