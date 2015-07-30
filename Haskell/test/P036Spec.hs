module P036Spec (main, spec) where

import Test.Hspec
import qualified P036

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 872187" $
      P036.main `shouldBe` 8721873
