module P025Spec (main, spec) where

import Test.Hspec
import qualified P025 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 4782" $
      P025.main `shouldBe` 4782
