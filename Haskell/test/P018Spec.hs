module P018Spec (main, spec) where

import Test.Hspec
import qualified P018 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 1074" $
      P018.main `shouldBe` 1074
