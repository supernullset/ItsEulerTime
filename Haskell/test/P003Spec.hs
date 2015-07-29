module P003Spec (main, spec) where

import Test.Hspec
import qualified P003 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 6857" $
      P003.main `shouldBe` 6857

