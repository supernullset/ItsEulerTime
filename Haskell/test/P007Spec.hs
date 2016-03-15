module P007Spec (solution, spec) where

import Test.Hspec
import qualified P007 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 104743" $
      P007.solution `shouldBe` 104743
