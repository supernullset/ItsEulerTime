module P046Spec (solution, spec) where

import Test.Hspec
import qualified P046

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 5777" $
      P046.solution `shouldBe` 5777
