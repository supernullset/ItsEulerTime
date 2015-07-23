module ZeroThreeZeroSpec (main, spec) where

import Test.Hspec
import qualified ZeroThreeZero (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 443839" $
      ZeroThreeZero.main `shouldBe` 443839
