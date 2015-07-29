module P005Spec (main, spec) where

import Test.Hspec
import qualified P005 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 232792560" $
      P005.main `shouldBe` 232792560

