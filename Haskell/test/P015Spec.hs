module P015Spec (main, spec) where

import Test.Hspec
import qualified P015 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 137846528820" $
      P015.main `shouldBe` 137846528820

