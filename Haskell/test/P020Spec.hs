module P020Spec (solution, spec) where

import Test.Hspec
import qualified P020 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 648" $
      P020.solution `shouldBe` 648
