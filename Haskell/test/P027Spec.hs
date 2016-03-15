module P027Spec (solution, spec) where

import Test.Hspec
import qualified P027 (solution)

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of -59231" $
      P027.solution `shouldBe` (-59231)
