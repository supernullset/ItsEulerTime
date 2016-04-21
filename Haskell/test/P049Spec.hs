module P049Spec (solution, spec) where

import Test.Hspec
import qualified P049

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 296962999629" $
      P049.solution `shouldBe` "296962999629"
