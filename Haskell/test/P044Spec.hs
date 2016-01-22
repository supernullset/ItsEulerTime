module P044Spec (main, spec) where

import Test.Hspec
import qualified P044

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 5482660" $
      P044.main `shouldBe` 5482660
