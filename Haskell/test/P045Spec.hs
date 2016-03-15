module P045Spec (solution, spec) where

import Test.Hspec
import qualified P045

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 1533776805" $
      P045.solution `shouldBe` 1533776805
