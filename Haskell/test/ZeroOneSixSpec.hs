module ZeroOneSixSpec (main, spec) where

import Test.Hspec
import qualified ZeroOneSix (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 1366" $
      ZeroOneSix.main `shouldBe` 1366
  
