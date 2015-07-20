module ZeroTwoSixSpec (main, spec) where

import Test.Hspec
import qualified ZeroTwoSix (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of unknown" $
      ZeroTwoSix.main `shouldBe` -1
