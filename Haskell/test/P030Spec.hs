module P030Spec (main, spec) where

import Test.Hspec
import qualified P030 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 443839" $
      P030.main `shouldBe` 443839
