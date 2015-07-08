import Test.Hspec

import qualified ZeroZeroOne (main)
import qualified ZeroZeroTwo (main)
import qualified ZeroZeroThree (main)
import qualified ZeroZeroFour (main)
import qualified ZeroZeroFive (main)
import qualified ZeroZeroSix (main)
import qualified ZeroZeroSeven (main)
import qualified ZeroZeroEight (main)
import qualified ZeroZeroNine (main)
import qualified ZeroOneZero (main)
import qualified ZeroOneOne (main, parMain)

main :: IO ()
main = hspec $ do
  describe "001" $ do
    it "must yield the correct answer of 233168" $
      ZeroZeroOne.main `shouldBe` 233168

  describe "002" $ do
    it "must yield the correct answer of 4613732" $
      ZeroZeroTwo.main `shouldBe` 4613732

  describe "003" $ do
    it "must yield the correct answer of 6857" $
      ZeroZeroThree.main `shouldBe` 6857

  describe "004" $ do
    it "must yield the correct answer of 906609" $
      ZeroZeroFour.main `shouldBe` 906609

  describe "005" $ do
    it "must yield the correct answer of 232792560" $
      ZeroZeroFive.main `shouldBe` 232792560

  describe "006" $ do
    it "must yield the correct answer of 25164150" $
      ZeroZeroSix.main `shouldBe` 25164150

  describe "007" $ do
    it "must yield the correct answer of 104743" $
      ZeroZeroSeven.main `shouldBe` 104743

  describe "008" $ do
    it "must yield the correct answer of 23514624000" $
      ZeroZeroEight.main `shouldBe` 23514624000

  describe "009" $ do
    it "must yield the correct answer of 31875000" $
      ZeroZeroNine.main `shouldBe` 31875000

  describe "010" $ do
    it "must yield the correct answer of 142913828922" $
      ZeroOneZero.main `shouldBe` 142913828922

  describe "011" $ do
    it "must yield the correct answer of 70600674" $
      ZeroOneOne.main `shouldBe` 70600674

    it "must yield the correct answer of 70600674 (parallel)" $
      ZeroOneOne.parMain `shouldBe` 70600674
