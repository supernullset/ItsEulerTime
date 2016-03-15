module P016Spec (solution, spec) where

import Test.Hspec
import qualified P016 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 1366" $
      P016.solution `shouldBe` 1366

