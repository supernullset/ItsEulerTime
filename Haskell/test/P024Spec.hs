module P024Spec (solution, spec) where

import Test.Hspec
import qualified P024 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 2783915460" $
      P024.solution `shouldBe` 2783915460
