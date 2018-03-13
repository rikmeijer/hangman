module Main where

import Data.String.Strip

askName :: String -> String
askName x = "Welcome " ++ x

main :: IO ()
main = interact askName
