firstDigit :: Integer -> Integer
splitToDigits n 
   | n < 1 = [] 
   | otherwise = splitToDigits (div n 10) ++ [mod n 10]
firstDigit n = head (splitToDigits n)
