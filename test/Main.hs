module Main where

import Test.HUnit
import Hangman.Tests
import Hangman.GallowsTests
import Hangman.PlayerTests

main = do
  runTestTT Hangman.Tests.tests
  runTestTT Hangman.GallowsTests.tests
  runTestTT Hangman.PlayerTests.tests