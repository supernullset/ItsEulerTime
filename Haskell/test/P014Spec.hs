module P014Spec (solution, spec) where

import Test.Hspec
import qualified P014 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 837799" $
      P014.solution `shouldBe` 837799

