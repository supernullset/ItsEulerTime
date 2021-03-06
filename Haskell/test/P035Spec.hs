module P035Spec (solution, spec) where

import Test.Hspec
import qualified P035

solution = hspec spec

spec = do
  describe "containsTwoOrFive" $ do
    it "must properly determine if 1 contains 2 or 5" $ do
      P035.containsTwoOrFive 1 `shouldBe` False
    it "must properly determine if 2 contains 2 or 5" $ do
      P035.containsTwoOrFive 2 `shouldBe` True
    it "must properly determine if 5 contains 2 or 5" $ do
      P035.containsTwoOrFive 5 `shouldBe` True
    it "must properly determine if 12 contains 2 or 5" $ do
      P035.containsTwoOrFive 12 `shouldBe` True
    it "must properly determine if 13 contains 2 or 5" $ do
      P035.containsTwoOrFive 13 `shouldBe` False
    it "must properly determine if 15 contains 2 or 5" $ do
      P035.containsTwoOrFive 15 `shouldBe` True
    it "must properly determine if 25 contains 2 or 5" $ do
      P035.containsTwoOrFive 25 `shouldBe` True
    it "must properly determine if 100 contains 2 or 5" $ do
      P035.containsTwoOrFive 100 `shouldBe` False
    it "must properly determine if 1200 contains 2 or 5" $ do
      P035.containsTwoOrFive 1200 `shouldBe` True
    it "must properly determine if 10500 contains 2 or 5" $ do
      P035.containsTwoOrFive 10500 `shouldBe` True


  describe "solution" $ do
    it "must yield the correct answer of 55" $
      P035.solution `shouldBe` 55
