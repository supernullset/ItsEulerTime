module P041Spec (main, spec) where

import Test.Hspec
import qualified P041

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 7652413" $
      P041.main `shouldBe` 7652413
