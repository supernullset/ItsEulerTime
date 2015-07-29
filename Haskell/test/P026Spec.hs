module P026Spec (main, spec) where

import Test.Hspec
import qualified P026 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 983" $
      P026.main `shouldBe` 983
