module ZeroTwoTwoSpec (main, spec) where

import Test.Hspec
import qualified ZeroTwoTwo (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 871198282" $
      ZeroTwoTwo.main `shouldBe` 871198282
