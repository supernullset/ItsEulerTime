module P038Spec (main, spec) where

import Test.Hspec
import qualified P038

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 932718654" $
      P038.main `shouldBe` 932718654
