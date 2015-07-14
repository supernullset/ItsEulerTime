module ZeroTwoOneSpec (main, spec) where

import Test.Hspec
import qualified ZeroTwoOne (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 31626" $
      ZeroTwoOne.main `shouldBe` 31626
