module P003Spec (solution, spec) where

import Test.Hspec
import qualified P003 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 6857" $
      P003.solution `shouldBe` 6857

