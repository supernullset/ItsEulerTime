module ZeroZeroFourSpec (main, spec) where

import Test.Hspec
import qualified ZeroZeroFour (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 906609" $
      ZeroZeroFour.main `shouldBe` 906609
