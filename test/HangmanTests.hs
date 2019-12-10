module HangmanTests where

import Hangman
import Test.Hspec

testSanity :: Bool -> Spec
testSanity sanity =
  it ("should be sane") $
    sanity `shouldBe` True

tests = hspec $ do
  describe "sanity" $ do
    testSanity True