module P043Spec (main, spec) where

import Test.Hspec
import qualified P043

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 16695334890" $
      P043.main `shouldBe` 16695334890
