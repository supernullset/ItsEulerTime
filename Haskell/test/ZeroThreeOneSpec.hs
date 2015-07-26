module ZeroThreeOneSpec (main, spec) where

import Test.Hspec
import qualified ZeroThreeOne (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 73682" $
      ZeroThreeOne.main `shouldBe` 73682
