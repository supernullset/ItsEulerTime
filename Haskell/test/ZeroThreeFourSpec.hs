module ZeroThreeFourSpec (main, spec) where

import Test.Hspec
import qualified ZeroThreeFour (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 40730" $
      ZeroThreeFour.main `shouldBe` 40730
