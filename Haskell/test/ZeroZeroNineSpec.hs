module ZeroZeroNineSpec (main, spec) where

import Test.Hspec
import qualified ZeroZeroNine (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 31875000" $
      ZeroZeroNine.main `shouldBe` 31875000


