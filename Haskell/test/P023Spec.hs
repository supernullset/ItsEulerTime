module P023Spec (main, spec) where

import Test.Hspec
import qualified P023 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 4179871" $
      P023.main `shouldBe` 4179871
