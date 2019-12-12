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

testGallow00 = TestCase (assertEqual "gallow for 0 errors" (gallow 0) ["", "", "", "", "", "|____"])

testGallow01 = TestCase (assertEqual "gallow for 1 errors" (gallow 1) ["", "|", "|", "|", "|", "|____"])

testGallow02 = TestCase (assertEqual "gallow for 2 errors" (gallow 2) ["-----", "|", "|", "|", "|", "|____"])

testGallow03 = TestCase (assertEqual "gallow for 3 errors" (gallow 3) ["-----", "|/", "|", "|", "|", "|____"])

testGallow04 = TestCase (assertEqual "gallow for 4 errors" (gallow 4) ["-----", "|/ |", "|", "|", "|", "|____"])

testGallow05 = TestCase (assertEqual "gallow for 5 errors" (gallow 5) ["-----", "|/ |", "|  o", "|", "|", "|____"])

testGallow06 = TestCase (assertEqual "gallow for 6 errors" (gallow 6) ["-----", "|/ |", "|  o", "|  |", "|", "|____"])

testGallow07 = TestCase (assertEqual "gallow for 7 errors" (gallow 7) ["-----", "|/ |", "|  o", "| /|", "|", "|____"])

testGallow08 = TestCase (assertEqual "gallow for 8 errors" (gallow 8) ["-----", "|/ |", "|  o", "| /|\\", "|", "|____"])

testGallow09 =
  TestCase (assertEqual "gallow for 9 errors" (gallow 9) ["-----", "|/ |", "|  o", "| /|\\", "| /", "|____"])

testGallow10 =
  TestCase (assertEqual "gallow for 10 errors" (gallow 10) ["-----", "|/ |", "|  o", "| /|\\", "| / \\", "|____"])

tests =
  TestList
    [ TestLabel "sanity" testSanity
    , TestLabel "questionPlayerName" (testQuestionPlayerName "1")
    , TestLabel "gallow00" (testGallow00)
    , TestLabel "gallow01" (testGallow01)
    , TestLabel "gallow02" (testGallow02)
    , TestLabel "gallow03" (testGallow03)
    , TestLabel "gallow04" (testGallow04)
    , TestLabel "gallow05" (testGallow05)
    , TestLabel "gallow06" (testGallow06)
    , TestLabel "gallow07" (testGallow07)
    , TestLabel "gallow08" (testGallow08)
    , TestLabel "gallow09" (testGallow09)
    , TestLabel "gallow10" (testGallow10)
    ]
