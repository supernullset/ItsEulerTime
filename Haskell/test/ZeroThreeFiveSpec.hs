module ZeroThreeFiveSpec (main, spec) where

import Test.Hspec
import qualified ZeroThreeFive (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 55" $
      ZeroThreeFive.main `shouldBe` 55
