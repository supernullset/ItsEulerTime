module P027Spec (main, spec) where

import Test.Hspec
import qualified P027 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of -59231" $
      P027.main `shouldBe` (-59231)
