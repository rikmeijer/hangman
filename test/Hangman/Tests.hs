module Hangman.Tests
  ( tests
  ) where

import           Hangman

import           Test.HUnit

testSanity = TestCase (assertEqual "sanity should equal True" True True)

testQuestionPlayerName index =
  TestCase
    (assertEqual
       "should return question for player name"
       ("Please enter the name of player " ++ index ++ " (use 'C' for computer): ")
       (Hangman.questionPlayerName index))
tests =
  TestList
    [ TestLabel "sanity" testSanity
    , TestLabel "questionPlayerName" (testQuestionPlayerName "1")
    ]
