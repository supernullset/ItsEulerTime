module ZeroTwoFiveSpec (main, spec) where

import Test.Hspec
import qualified ZeroTwoFive (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 4782" $
      ZeroTwoFive.main `shouldBe` 4782
