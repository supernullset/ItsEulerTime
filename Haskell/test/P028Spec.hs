module P028Spec (solution, spec) where

import Test.Hspec
import qualified P028 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 669169001" $
      P028.solution `shouldBe` 669169001
