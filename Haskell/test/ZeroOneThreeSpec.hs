module ZeroOneThreeSpec (main, spec) where

import Test.Hspec
import qualified ZeroOneThree (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 5537376230" $ do
      m <- ZeroOneThree.main
      m `shouldBe` "5537376230"
