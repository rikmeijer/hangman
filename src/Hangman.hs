module Hangman (hangman)  where

hangman :: String -> String -> String
hangman player1 player2 = "The draw was made: " ++ startingPlayer player1 ++ " begins."
  where startingPlayer "C" = "Computer"
        startingPlayer player1 = player1
