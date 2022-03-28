halve :: [a] -> ([a], [a]) 
halve xs = 
    ((take s xs), (drop s xs))
    where
        s = (length xs ) `div` 2
