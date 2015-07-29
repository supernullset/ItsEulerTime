module P032Spec (main, spec) where

import Test.Hspec
import qualified P032 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 45228" $
      P032.main `shouldBe` 45228
