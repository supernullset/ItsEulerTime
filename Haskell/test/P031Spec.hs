module P031Spec (main, spec) where

import Test.Hspec
import qualified P031 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 73682" $
      P031.main `shouldBe` 73682
