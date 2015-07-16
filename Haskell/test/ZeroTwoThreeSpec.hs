module ZeroTwoThreeSpec (main, spec) where

import Test.Hspec
import qualified ZeroTwoThree (main)

main = hspec spec

spec = do
  describe "main" $ do
    it "must yield the correct answer of 4179871" $
      ZeroTwoThree.main `shouldBe` 4179871
