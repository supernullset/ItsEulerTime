module P013Spec (main, spec) where

import Test.Hspec
import qualified P013 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 5537376230" $
      P013.main `shouldBe` "5537376230"
