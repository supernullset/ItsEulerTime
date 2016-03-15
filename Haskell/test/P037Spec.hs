module P037Spec (solution, spec) where

import Test.Hspec
import qualified P037

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 748317" $
      P037.solution `shouldBe` 748317
