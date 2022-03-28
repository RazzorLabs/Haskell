myRecipe :: IO ()
myRecipe = do
  putStr "Enter input\n"
  num <- readLn :: IO Int
  putStr "The output is "
  putStr (show (num + 1))
