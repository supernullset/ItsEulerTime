module ZeroOneZeroSpec (main, spec) where

import Test.Hspec
import qualified ZeroOneZero (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 142913828922" $
      ZeroOneZero.main `shouldBe` 142913828922
