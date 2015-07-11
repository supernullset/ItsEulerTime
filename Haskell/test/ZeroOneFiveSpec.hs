module ZeroOneFiveSpec (main, spec) where

import Test.Hspec
import qualified ZeroOneFive (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 137846528820" $
      ZeroOneFive.main `shouldBe` 137846528820
  
