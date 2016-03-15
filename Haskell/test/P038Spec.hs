module P038Spec (solution, spec) where

import Test.Hspec
import qualified P038

solution = hspec spec

spec = do
  describe "solution" $ do
    it "must yield the correct answer of 932718654" $
      P038.solution `shouldBe` 932718654
