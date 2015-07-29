module P020Spec (main, spec) where

import Test.Hspec
import qualified P020 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 648" $
      P020.main `shouldBe` 648
