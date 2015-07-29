module P028Spec (main, spec) where

import Test.Hspec
import qualified P028 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 669169001" $
      P028.main `shouldBe` 669169001
