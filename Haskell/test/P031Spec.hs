module P031Spec (solution, spec) where

import Test.Hspec
import qualified P031 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 73682" $
      P031.solution `shouldBe` 73682
