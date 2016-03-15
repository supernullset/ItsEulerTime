module P010Spec (solution, spec) where

import Test.Hspec
import qualified P010 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 142913828922" $
      P010.solution `shouldBe` 142913828922
