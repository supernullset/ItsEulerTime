module P021Spec (main, spec) where

import Test.Hspec
import qualified P021 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 31626" $
      P021.main `shouldBe` 31626
