module ZeroTwoSevenSpec (main, spec) where

import Test.Hspec
import qualified ZeroTwoSeven (main, parMain)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of -1" $
      ZeroOneOne.main `shouldBe` -1
