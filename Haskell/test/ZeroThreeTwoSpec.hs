module ZeroThreeTwoSpec (main, spec) where

import Test.Hspec
import qualified ZeroThreeTwo (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 45228" $
      ZeroThreeTwo.main `shouldBe` 45228
