module Hangman (hangman)  where

import Hangman.IO
import Data.List

hangman :: IO ()
hangman = do
    putStrLn "Welcome to hangman!"
    namePlayer1 <- ask (questionPlayerName "1")
    namePlayer2 <- ask (questionPlayerName "2")
    putStrLn (draw namePlayer1 namePlayer2)
    play "" "Feesttent"

questionPlayerName :: String -> String
questionPlayerName index = "Please enter the name of player " ++ index ++ " (use 'C' for computer): "

draw :: String -> String -> String
draw player1 player2 = "The draw was made: " ++ startingPlayer player1 ++ " begins."
  where startingPlayer "C" = "Computer"
        startingPlayer player1 = player1

play :: String -> String -> IO ()
play guesses word = do
  putStrLn $ map (\a -> '.') word
  putStrLn ("Errors: 0 (" ++ guesses ++ ")")
  putStrLn (generateGallows 0)
  characterGuess <- ask "Enter your guess: "
  play (guesses ++ characterGuess) word


generateGallows :: Int -> String
generateGallows state
  | state == 0 = "|__"
  | otherwise = "unknown"