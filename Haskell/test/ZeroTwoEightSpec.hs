module ZeroTwoEightSpec (main, spec) where

import Test.Hspec
import qualified ZeroTwoEight (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 669169001" $
      ZeroTwoEight.main `shouldBe` 669169001
