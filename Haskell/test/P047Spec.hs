module P047Spec (solution, spec) where

import Test.Hspec
import qualified P047

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of [134043,134044,134045,134046]" $
      P047.solution `shouldBe` [134043,134044,134045,134046]
