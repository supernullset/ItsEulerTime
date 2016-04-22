module P050Spec (solution, spec) where

import Test.Hspec
import qualified P050

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 997651" $
      P050.solution `shouldBe` "997651"
