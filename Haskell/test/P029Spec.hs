module P029Spec (main, spec) where

import Test.Hspec
import qualified P029 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 9183" $
      P029.main `shouldBe` 9183
