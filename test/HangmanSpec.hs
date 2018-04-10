module HangmanSpec (main, spec) where

import Test.Hspec
import Test.QuickCheck

import Hangman

-- `main` is here so that this module can be run from GHCi on its own.  It is
-- not needed for automatic spec discovery.
main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "hangman" $ do
    it "determines the starting player" $ do
      hangman "P1" "P2" `shouldStartWith` "The draw was made: "
    it "determines the starting player" $ do
      hangman "P1" "P2" `shouldEndWith` " begins."