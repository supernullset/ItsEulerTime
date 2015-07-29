module P017Spec (main, spec) where

import Test.Hspec
import qualified P017 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 21124" $
      P017.main `shouldBe` 21124

