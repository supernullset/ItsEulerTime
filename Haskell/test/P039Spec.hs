module P039Spec (solution, spec) where

import Test.Hspec
import qualified P039

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 840" $
      P039.solution `shouldBe` 840
