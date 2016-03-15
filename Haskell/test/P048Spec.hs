module P048Spec (solution, spec) where

import Test.Hspec
import qualified P048

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 9110846700" $
      P048.solution `shouldBe` "9110846700"
