{-

Define a function dropOdds :: Int -> Int with the following behaviour. For any positive number m, dropOdds m is got by dropping all the odd digits in m. 
(If all the digits in the number are odd, the answer should be 0.)

-}

dropOdds :: Int -> Int
dropOdds x
    | x >= 10 = 10 * dropOdds restDigits + filterDrops firstDigit
    | otherwise = filterDrops x
    where 
      firstDigit = x `mod` 10
      restDigits = x `div` 10


filterDrops x 
    | x `mod` 2 == 0 = x -- x is even => we keep it
    | otherwise = 0 -- x is drop => we 


main =  do
   print(dropOdds 0)
   print(dropOdds 8)
   print(dropOdds 10)
   print(dropOdds 1357)
