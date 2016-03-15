module P009Spec (solution, spec) where

import Test.Hspec
import qualified P009 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 31875000" $
      P009.solution `shouldBe` 31875000


