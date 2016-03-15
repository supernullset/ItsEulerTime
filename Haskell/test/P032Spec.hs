module P032Spec (solution, spec) where

import Test.Hspec
import qualified P032 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 45228" $
      P032.solution `shouldBe` 45228
