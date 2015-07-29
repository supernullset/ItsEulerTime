module P001Spec (main, spec) where

import Test.Hspec
import qualified P001 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 233168" $
      P001.main `shouldBe` 233168
