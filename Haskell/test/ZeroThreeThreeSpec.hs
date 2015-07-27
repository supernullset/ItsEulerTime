module ZeroThreeThreeSpec (main, spec) where

import Test.Hspec
import qualified ZeroThreeThree (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 100" $
      ZeroThreeThree.main `shouldBe` 100
