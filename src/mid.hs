mid :: Int -> Int -> Int -> Int
mid x y z
        | x > y || y < z = y
        | otherwise = z
