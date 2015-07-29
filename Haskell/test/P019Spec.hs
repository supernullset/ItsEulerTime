module P019Spec (main, spec) where

import Test.Hspec
import qualified P019 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 171" $
      P019.main `shouldBe` 171
