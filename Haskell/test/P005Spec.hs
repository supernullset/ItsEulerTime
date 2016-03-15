module P005Spec (solution, spec) where

import Test.Hspec
import qualified P005 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 232792560" $
      P005.solution `shouldBe` 232792560

