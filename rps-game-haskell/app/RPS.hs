module Main where

import System.IO
import System.Exit
import Control.Monad
import System.Random

data Hand
    = Rock
    | Paper
    | Scissors
    deriving (Eq, Show)

data Player
    = Human
    | CPU
    | Tie
    deriving (Eq, Show)

rules :: [(Hand, Hand)]
rules = 
    [ (Rock, Scissors)
    , (Paper, Rock)
    , (Scissors, Paper)
    ]

winner :: Hand -> Hand -> String
winner u c
    | u == c = "It's a " ++ show Tie
    | otherwise = "The winner is: " ++
        show (if c == snd rule then Human else CPU)
    where rule = head $ filter ((== u) . fst) rules

cpu :: IO Hand
cpu = do
    let gestures = [Rock, Paper, Scissors]
    i <- randomRIO (0, length gestures - 1)
    let gest = gestures !! i
    putStrLn $ "CPU chose: " ++ show gest
    return gest

user :: IO Hand
user = do
    print "Make your move Choices are: Rock, Paper, Scissors : "
    gest <- getLine
    putStrLn $ "You chose: " ++ show gest
    case gesture gest of
        Just g  -> return g
        Nothing -> user

gesture :: String -> Maybe Hand
gesture "Rock"     = Just Rock
gesture "Paper"    = Just Paper
gesture "Scissors" = Just Scissors
gesture _          = Nothing

game :: IO ()
game = do
    hSetEcho stdin True
    u <- user
    c <- cpu
    putStrLn $ winner u c ++ "\n"
    game

main = forever (printMenu >> readChoice >>= menuAction)

printMenu = putStrLn "\ns)tart the RPS Game!'\ne)xit\nyour choice: " 
readChoice = hSetBuffering stdin NoBuffering >> hSetEcho stdin False >> getChar

menuAction 's' = game
menuAction 'e' = exitSuccess
menuAction _ = hPutStrLn stderr "\nInvalid choice."
