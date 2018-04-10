module Main where

import Hangman


main :: IO ()
main = do
    putStrLn "Welcome to hangman!"
    putStrLn "Please enter the name of player 1 (use 'C' for computer): "
    namePlayer1 <- getLine
    putStrLn "Please enter the name of player 2 (use 'C' for computer): "
    namePlayer2 <- getLine
    putStrLn $ "Read this carefully, because this is your future: " ++ hangman namePlayer1 namePlayer2
