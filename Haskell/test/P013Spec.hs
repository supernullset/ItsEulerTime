module P013Spec (solution, spec) where

import Test.Hspec
import qualified P013 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 5537376230" $
      P013.solution `shouldBe` "5537376230"
