module LibSpec (main, spec) where

import Test.Hspec
import Lib

main = hspec spec

spec = do
  describe "isPrime" $ do
    it "must determine if 3 is prime" $
      isPrime 3 `shouldBe` True

  describe "factors" $ do
    it "must determine factors of 5" $
      factors 5 `shouldBe` [1,5]
    it "must determine factors of 10" $
      factors 10 `shouldBe` [1,2,5,10]
    it "must determine factors of 20" $
      factors 20 `shouldBe` [1,2,4,5,10,20]

  describe "isPalendrome" $ do
    it "must be able to tell a correct Palindrome" $ do
      isPalendrome "123" `shouldBe` False
      isPalendrome "121" `shouldBe` True

  describe "rots" $ do
    it "must properly determine rotations" $ do
      rots 197 `shouldBe` [197, 971, 719]

  describe "isCircularPrime" $ do
    it "must properly determine if is Circular Prime" $ do
      isCircularPrime 197 `shouldBe` True

