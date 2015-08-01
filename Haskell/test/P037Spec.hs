module P037Spec (main, spec) where

import Test.Hspec
import qualified P037

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 748317" $
      P037.main `shouldBe` 748317
