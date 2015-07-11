module ZeroOneFourSpec (main, spec) where

import Test.Hspec
import qualified ZeroOneFour (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 837799" $
      ZeroOneFour.main `shouldBe` 837799
  
