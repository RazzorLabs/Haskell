getNumber :: String -> IO Int
getNumber name = do
  putStrLn $ "Enter number " ++ name
  readLn :: IO Int -- Last step of the recipe, this will be the output as well.

exercise :: IO ()
exercise = do
  num1 <- getNumber "1" -- a way to give a name, we aren't getting anything out of the IO!
  num2 <- getNumber "2"
  let sumOf2 = num1 + num2
  if sumOf2 < 10
    then do
      putStrLn "Oh no, the sum of 2 numbers is less than 10."
      num3 <- getNumber "3"
      let sumOf3 = sumOf2 + num3
      putStrLn $ "The sum of 3 numbers is: " ++ show sumOf3
    else do
      putStrLn $ "The sum of 2 numbers is: " ++ show sumOf2
