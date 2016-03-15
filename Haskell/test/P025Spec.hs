module P025Spec (solution, spec) where

import Test.Hspec
import qualified P025 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 4782" $
      P025.solution `shouldBe` 4782
