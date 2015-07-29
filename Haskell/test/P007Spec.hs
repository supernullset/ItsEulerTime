module P007Spec (main, spec) where

import Test.Hspec
import qualified P007 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 104743" $
      P007.main `shouldBe` 104743
