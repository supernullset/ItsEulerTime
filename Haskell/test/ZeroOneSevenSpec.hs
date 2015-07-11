module ZeroOneSevenSpec (main, spec) where

import Test.Hspec
import qualified ZeroOneSeven (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 21124" $
      ZeroOneSeven.main `shouldBe` 21124

