module P044Spec (solution, spec) where

import Test.Hspec
import qualified P044

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 5482660" $
      P044.solution `shouldBe` 5482660
