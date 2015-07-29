module P014Spec (main, spec) where

import Test.Hspec
import qualified P014 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 837799" $
      P014.main `shouldBe` 837799

