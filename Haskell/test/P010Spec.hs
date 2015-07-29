module P010Spec (main, spec) where

import Test.Hspec
import qualified P010 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 142913828922" $
      P010.main `shouldBe` 142913828922
