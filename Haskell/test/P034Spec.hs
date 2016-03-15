module P034Spec (solution, spec) where

import Test.Hspec
import qualified P034 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 40730" $
      P034.solution `shouldBe` 40730
