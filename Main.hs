module Main where

import Data.Char ()
import System.IO (IOMode (WriteMode), openFile)

main :: IO ()
main = do
  handle <- openFile "output.txt" WriteMode
  putStrLn "Hello, put on some string that should be permutate?"
  symbols <- getLine
  putStrLn (permutate symbols)

permutate :: String -> String
permutate input =
  let allLines = lines input
      shortLines = filter (\line -> length line < 10) allLines
      result = unlines shortLines
   in result
