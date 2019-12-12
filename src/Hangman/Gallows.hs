module Hangman.Gallows (generate) where

generate :: Int -> [String]
generate errorCount
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