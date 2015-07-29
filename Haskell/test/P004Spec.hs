module P004Spec (main, spec) where

import Test.Hspec
import qualified P004 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 906609" $
      P004.main `shouldBe` 906609
