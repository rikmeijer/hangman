module Hangman.Player (askName) where


askName :: String -> String
askName index = "Please enter the name of player " ++ index ++ " (use 'C' for computer): "