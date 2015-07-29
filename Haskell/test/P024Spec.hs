module P024Spec (main, spec) where

import Test.Hspec
import qualified P024 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 2783915460" $
      P024.main `shouldBe` 2783915460
