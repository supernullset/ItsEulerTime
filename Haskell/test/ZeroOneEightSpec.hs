module ZeroOneEightSpec (main, spec) where

import Test.Hspec
import qualified ZeroOneEight (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 1074" $
      ZeroOneEight.main `shouldBe` 1074
