module P036Spec (solution, spec) where

import Test.Hspec
import qualified P036

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 872187" $
      P036.solution `shouldBe` 872187
