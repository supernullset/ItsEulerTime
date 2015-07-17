module ZeroTwoFourSpec (main, spec) where

import Test.Hspec
import qualified ZeroTwoFour (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 2783915460" $
      ZeroTwoFour.main `shouldBe` 2783915460
