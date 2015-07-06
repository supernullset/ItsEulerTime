import Test.Hspec
import qualified ZeroZeroOne (main)

main :: IO ()
main = hspec $ do
  describe "001" $ do
    it "must yield the correct answer" $
      ZeroZeroOne.main `shouldBe` 233168


