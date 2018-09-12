module Hangman.IO (ask) where

import System.IO

ask :: String -> IO String
ask question = do
    putStr question
    hFlush stdout
    getLine