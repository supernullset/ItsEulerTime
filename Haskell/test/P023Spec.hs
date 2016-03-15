module P023Spec (solution, spec) where

import Test.Hspec
import qualified P023 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 4179871" $
      P023.solution `shouldBe` 4179871
