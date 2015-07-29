module P006Spec (main, spec) where

import Test.Hspec
import qualified P006 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 25164150" $
      P006.main `shouldBe` 25164150