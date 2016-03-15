module P033Spec (solution, spec) where

import Test.Hspec
import qualified P033 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 100" $
      P033.solution `shouldBe` 100
