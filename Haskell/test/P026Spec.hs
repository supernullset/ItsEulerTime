module P026Spec (solution, spec) where

import Test.Hspec
import qualified P026 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 983" $
      P026.solution `shouldBe` 983
