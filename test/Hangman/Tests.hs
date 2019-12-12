module Hangman.Tests
  ( tests
  ) where

import           Hangman

import           Test.HUnit

testSanity = TestCase (assertEqual "sanity should equal True" True True)

tests =
  TestList
    [ TestLabel "sanity" testSanity
    ]
