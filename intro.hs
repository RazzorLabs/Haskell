-- Factorial function
-- Pattern matching!
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

age :: Int
age = 12
canYouDrink :: Bool
canYouDrink = if age >= 18 then True else False
