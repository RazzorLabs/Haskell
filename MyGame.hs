-- Simple game to find out which transport is faster
-- We have tree types of transport here:
-- Bicycle (B), Car (C), Plane (P)
-- Martin Offermann, March 2022

module Main where

import Control.Monad

data BCP = Bicycle | Car | Plane deriving (Show)

data Result = Win | Lose | Tie deriving (Show, Eq)

eval :: BCP -> BCP -> Result
eval Bicycle Car = Lose
eval Car Plane = Lose
eval Plane Bicycle = Win
eval Bicycle Plane = Lose
eval Plane Car = Win
eval Car Bicycle = Win
eval _ _ = Tie