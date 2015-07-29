module P033Spec (main, spec) where

import Test.Hspec
import qualified P033 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 100" $
      P033.main `shouldBe` 100
