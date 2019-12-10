module Main where

import HangmanTests
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "sanity" $ do
    testSanity True