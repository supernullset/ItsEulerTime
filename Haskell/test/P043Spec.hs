module P043Spec (solution, spec) where

import Test.Hspec
import qualified P043

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 16695334890" $
      P043.solution `shouldBe` 16695334890
