module P042Spec (solution, spec) where

import Test.Hspec
import qualified P042

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 162" $
      P042.solution `shouldBe` 162
