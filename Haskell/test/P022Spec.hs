module P022Spec (solution, spec) where

import Test.Hspec
import qualified P022 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 871198282" $
      P022.solution `shouldBe` 871198282
