module Hangman.GallowsTests
  ( tests
  ) where

import           Hangman.Gallows
import           Test.HUnit

testGallows00 = TestCase (assertEqual "gallows for 0 errors" (gallows 0) ["", "", "", "", "", "|____"])

testGallows01 = TestCase (assertEqual "gallows for 1 errors" (gallows 1) ["", "|", "|", "|", "|", "|____"])

testGallows02 = TestCase (assertEqual "gallows for 2 errors" (gallows 2) ["-----", "|", "|", "|", "|", "|____"])

testGallows03 = TestCase (assertEqual "gallows for 3 errors" (gallows 3) ["-----", "|/", "|", "|", "|", "|____"])

testGallows04 = TestCase (assertEqual "gallows for 4 errors" (gallows 4) ["-----", "|/ |", "|", "|", "|", "|____"])

testGallows05 = TestCase (assertEqual "gallows for 5 errors" (gallows 5) ["-----", "|/ |", "|  o", "|", "|", "|____"])

testGallows06 = TestCase (assertEqual "gallows for 6 errors" (gallows 6) ["-----", "|/ |", "|  o", "|  |", "|", "|____"])

testGallows07 = TestCase (assertEqual "gallows for 7 errors" (gallows 7) ["-----", "|/ |", "|  o", "| /|", "|", "|____"])

testGallows08 = TestCase (assertEqual "gallows for 8 errors" (gallows 8) ["-----", "|/ |", "|  o", "| /|\\", "|", "|____"])

testGallows09 =
  TestCase (assertEqual "gallows for 9 errors" (gallows 9) ["-----", "|/ |", "|  o", "| /|\\", "| /", "|____"])

testGallows10 =
  TestCase (assertEqual "gallows for 10 errors" (gallows 10) ["-----", "|/ |", "|  o", "| /|\\", "| / \\", "|____"])

tests =
  TestList
    [ TestLabel "gallows00" testGallows00
    , TestLabel "gallows01" testGallows01
    , TestLabel "gallows02" testGallows02
    , TestLabel "gallows03" testGallows03
    , TestLabel "gallows04" testGallows04
    , TestLabel "gallows05" testGallows05
    , TestLabel "gallows06" testGallows06
    , TestLabel "gallows07" testGallows07
    , TestLabel "gallows08" testGallows08
    , TestLabel "gallows09" testGallows09
    , TestLabel "gallows10" testGallows10
    ]
