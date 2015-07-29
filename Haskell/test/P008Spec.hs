module P008Spec (main, spec) where

import Test.Hspec
import qualified P008 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 23514624000" $
      P008.main `shouldBe` 23514624000
