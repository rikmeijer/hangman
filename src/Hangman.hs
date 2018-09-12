module Hangman (hangman)  where

import Hangman.IO
import Data.List

hangman :: IO ()
hangman = do
    putStrLn "Welcome to hangman!"
    namePlayer1 <- ask (questionPlayerName "1")
    namePlayer2 <- ask (questionPlayerName "2")
    putStrLn (draw namePlayer1 namePlayer2)
    play "Feesttent"

questionPlayerName :: String -> String
questionPlayerName index = "Please enter the name of player " ++ index ++ " (use 'C' for computer): "

draw :: String -> String -> String
draw player1 player2 = "The draw was made: " ++ startingPlayer player1 ++ " begins."
  where startingPlayer "C" = "Computer"
        startingPlayer player1 = player1

play :: String -> IO ()
play word = do
  putStrLn $ map (\a -> '.') word
