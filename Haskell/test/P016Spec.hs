module P016Spec (main, spec) where

import Test.Hspec
import qualified P016 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 1366" $
      P016.main `shouldBe` 1366

