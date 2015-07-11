module ZeroOneTwoSpec (main, spec) where

import Test.Hspec
import qualified ZeroOneTwo (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 76576500" $
      ZeroOneTwo.main `shouldBe` 76576500
  
