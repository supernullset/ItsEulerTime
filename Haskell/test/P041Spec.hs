module P041Spec (solution, spec) where

import Test.Hspec
import qualified P041

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 7652413" $
      P041.solution `shouldBe` 7652413
