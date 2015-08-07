module P039Spec (main, spec) where

import Test.Hspec
import qualified P039

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 840" $
      P039.main `shouldBe` 840
