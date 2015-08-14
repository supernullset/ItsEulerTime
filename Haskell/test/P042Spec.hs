module P042Spec (main, spec) where

import Test.Hspec
import qualified P042

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 162" $
      P042.main `shouldBe` 162
