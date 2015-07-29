module P034Spec (main, spec) where

import Test.Hspec
import qualified P034 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 40730" $
      P034.main `shouldBe` 40730
