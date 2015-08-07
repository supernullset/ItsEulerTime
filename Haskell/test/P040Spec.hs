module P040Spec (main, spec) where

import Test.Hspec
import qualified P040

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 210" $
      P039.main `shouldBe` 210
