module ZeroTwoNineSpec (main, spec) where

import Test.Hspec
import qualified ZeroTwoNine (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 9183" $
      ZeroTwoNine.main `shouldBe` 9183
