module Hangman.PlayerTests
  ( tests
  ) where

import           Hangman.Player
import           Test.HUnit

testAskName index =
  TestCase
    (assertEqual
       "should return question for player name"
       ("Please enter the name of player " ++ index ++ " (use 'C' for computer): ")
       (Hangman.Player.askName index))

tests =
  TestList [TestLabel "ask user '1' for name" (testAskName "1"), TestLabel "ask user '2' for name" (testAskName "2")]
