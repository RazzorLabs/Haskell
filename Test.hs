module Main where

import System.IO as Buf
import System.Random

data Gesture
  = Rock
  | Paper
  | Scissors
  deriving (Eq, Show)

rules :: [(Gesture, Gesture)]
rules =
  [ (Rock, Scissors),
    (Paper, Rock),
    (Scissors, Paper)
  ]

-- CPU makes its choice and reports to the console.

cpu :: IO Gesture
cpu = do
  let gestures = [Rock, Paper, Scissors]
  i <- randomRIO (0, length gestures - 1)
  let gest = gestures !! i
  putStrLn $ "Computer chose: " ++ show gest
  return gest