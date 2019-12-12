module Hangman.GallowsTests
  ( tests
  ) where

import           Hangman.Gallows
import           Test.HUnit

testGenerate00 = TestCase (assertEqual "gallows for 0 errors" (generate 0) ["", "", "", "", "", "|____"])

testGenerate01 = TestCase (assertEqual "gallows for 1 errors" (generate 1) ["", "|", "|", "|", "|", "|____"])

testGenerate02 = TestCase (assertEqual "gallows for 2 errors" (generate 2) ["-----", "|", "|", "|", "|", "|____"])

testGenerate03 = TestCase (assertEqual "gallows for 3 errors" (generate 3) ["-----", "|/", "|", "|", "|", "|____"])

testGenerate04 = TestCase (assertEqual "gallows for 4 errors" (generate 4) ["-----", "|/ |", "|", "|", "|", "|____"])

testGenerate05 = TestCase (assertEqual "gallows for 5 errors" (generate 5) ["-----", "|/ |", "|  o", "|", "|", "|____"])

testGenerate06 = TestCase (assertEqual "gallows for 6 errors" (generate 6) ["-----", "|/ |", "|  o", "|  |", "|", "|____"])

testGenerate07 = TestCase (assertEqual "gallows for 7 errors" (generate 7) ["-----", "|/ |", "|  o", "| /|", "|", "|____"])

testGenerate08 = TestCase (assertEqual "gallows for 8 errors" (generate 8) ["-----", "|/ |", "|  o", "| /|\\", "|", "|____"])

testGenerate09 =
  TestCase (assertEqual "gallows for 9 errors" (generate 9) ["-----", "|/ |", "|  o", "| /|\\", "| /", "|____"])

testGenerate10 =
  TestCase (assertEqual "gallows for 10 errors" (generate 10) ["-----", "|/ |", "|  o", "| /|\\", "| / \\", "|____"])

tests =
  TestList
    [ TestLabel "gallows00" testGenerate00
    , TestLabel "gallows01" testGenerate01
    , TestLabel "gallows02" testGenerate02
    , TestLabel "gallows03" testGenerate03
    , TestLabel "gallows04" testGenerate04
    , TestLabel "gallows05" testGenerate05
    , TestLabel "gallows06" testGenerate06
    , TestLabel "gallows07" testGenerate07
    , TestLabel "gallows08" testGenerate08
    , TestLabel "gallows09" testGenerate09
    , TestLabel "gallows10" testGenerate10
    ]
