module P009Spec (main, spec) where

import Test.Hspec
import qualified P009 (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 31875000" $
      P009.main `shouldBe` 31875000


