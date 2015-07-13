module ZeroOneNineSpec (main, spec) where

import Test.Hspec
import qualified ZeroOneNine (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 171" $
      ZeroOneNine.main `shouldBe` 171
