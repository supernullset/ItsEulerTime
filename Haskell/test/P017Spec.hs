module P017Spec (solution, spec) where

import Test.Hspec
import qualified P017 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 21124" $
      P017.solution `shouldBe` 21124

