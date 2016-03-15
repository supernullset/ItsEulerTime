module LibSpec (solution, spec) where

import Test.Hspec
import Lib

solution = hspec spec

spec = do
  describe "isPrime" $ do
    it "must determine if 3 is prime" $
      isPrime 3 `shouldBe` True

  describe "isCoprime" $ do
    it "must determine if 14,15 are coprime" $
      isCoprime 14 15 `shouldBe` True

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

  describe "primeFactors" $ do
    it "must determine factors of 5" $
      primeFactors 5 `shouldBe` [5]
    it "must determine factors of 10" $
      primeFactors 10 `shouldBe` [2,5]
    it "must determine factors of 20" $
      primeFactors 20 `shouldBe` [2,2,5]

  describe "primes" $ do
    it "must determine proper primes" $
      take 5 primes `shouldBe` [2,3,5,7,11]

  describe "groupsOf" $ do
    it "must take groups of evenly divisible lists with no hanging groups" $
      groupsOf 2 [1..4] `shouldBe` [[1,2], [2,3], [3,4]]

  describe "choose" $ do
    it "must return the correct binomial coefficient of 1 0" $
       choose 1 0 `shouldBe` 1

    it "must return the correct binomial coefficient of 0 1" $
      choose 0 1 `shouldBe` 0

    it "must return the correct binomial coefficient of 10 3" $
      choose 10 3 `shouldBe` 120

  describe "properDivisors" $ do
    it "must return the proper divisors of 10" $
       properDivisors 10 `shouldBe` [1,2,5]

  describe "factorial" $ do
    it "must return the proper value for 10" $
      factorial 10 `shouldBe` 3628800

  describe "digits" $ do
    it "must return the digits of an integer" $
      digits 1234 `shouldBe` [1,2,3,4]

  describe "hasDuplicateDigits" $ do
    it "must determine is an integer has unique digits" $
      hasDuplicateDigits 1234 `shouldBe` False

    it "must determine is an integer has duplicate digits" $
      hasDuplicateDigits 111 `shouldBe` True

  describe "rotations" $ do
    it "must return the rotations of a list of numbers" $
      rotations [1,2,3] `shouldBe` [[1,2,3], [2,3,1], [3,1,2], [1,2,3]]

  describe "intStringToList" $ do
    it "converts and integer string to a list of ints" $
      intStringToList "123" `shouldBe` [1,2,3]

  describe "rots" $ do
    it "must properly determine rotations of an int" $
      rots 197 `shouldBe` [197, 971, 719]

  describe "isCircularPrime" $ do
    it "must properly determine if is Circular Prime" $
      isCircularPrime 197 `shouldBe` True

