module P002Spec (main, spec) where

import Test.Hspec
import qualified P002 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 4613732" $
      P002.main `shouldBe` 4613732

