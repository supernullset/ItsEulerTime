module P022Spec (main, spec) where

import Test.Hspec
import qualified P022 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 871198282" $
      P022.main `shouldBe` 871198282
