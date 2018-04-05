module HangmanSpec (main, hangman) where

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
    it "starts the game of hangman" $ do
      hangman "Rik" `shouldBe` "Welcome Rik"
