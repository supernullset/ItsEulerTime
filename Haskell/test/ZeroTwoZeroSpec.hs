module ZeroTwoZeroSpec (main, spec) where

import Test.Hspec
import qualified ZeroTwoZero (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 648" $
      ZeroTwoZero.main `shouldBe` 648
