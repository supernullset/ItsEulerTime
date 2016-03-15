module P019Spec (solution, spec) where

import Test.Hspec
import qualified P019 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 171" $
      P019.solution `shouldBe` 171
