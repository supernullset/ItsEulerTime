module P012Spec (solution, spec) where

import Test.Hspec
import qualified P012 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 76576500" $
      P012.solution `shouldBe` 76576500
