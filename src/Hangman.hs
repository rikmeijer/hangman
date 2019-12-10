module Hangman  where

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
  putStrLn ("Errors: " ++ show errorCount ++ " (" ++ guesses ++ ")")
  putStrLn $ unlines (generateGallows errorCount)
  characterGuess <- ask "Enter your guess: "
  play (guesses ++ characterGuess) word
  where errorCount = (length (guesses \\ word))

generateGallows :: Int -> [String]
generateGallows errorCount
  | errorCount == 0 = ["","","","","","|____"]
  | errorCount == 1 = ["","|","|","|","|","|____"]
  | errorCount == 2 = ["-----","|","|","|","|","|____"]
  | errorCount == 3 = ["-----","|/","|","|","|","|____"]
  | errorCount == 4 = ["-----","|/ |","|","|","|","|____"]
  | errorCount == 5 = ["-----","|/ |","|  o","|","|","|____"]
  | errorCount == 6 = ["-----","|/ |","|  o","|  |","|","|____"]
  | errorCount == 7 = ["-----","|/ |","|  o","| /|","|","|____"]
  | errorCount == 8 = ["-----","|/ |","|  o","| /|\\","|","|____"]
  | errorCount == 9 = ["-----","|/ |","|  o","| /|\\","| /","|____"]
  | errorCount == 10 = ["-----","|/ |","|  o","| /|\\","| / \\","|____"]
  | otherwise = ["unknown"]