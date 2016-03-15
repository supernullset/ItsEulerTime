module P018Spec (solution, spec) where

import Test.Hspec
import qualified P018 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 1074" $
      P018.solution `shouldBe` 1074
