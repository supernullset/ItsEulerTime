module P012Spec (main, spec) where

import Test.Hspec
import qualified P012 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 76576500" $
      P012.main `shouldBe` 76576500
