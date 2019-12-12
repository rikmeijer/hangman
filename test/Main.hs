module Main where

import Test.HUnit
import Hangman.Tests
import Hangman.GallowsTests

main = do
  runTestTT Hangman.Tests.tests
  runTestTT Hangman.GallowsTests.tests