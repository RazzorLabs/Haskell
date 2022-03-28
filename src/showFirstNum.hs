firstNum :: Integer -> Int
firstNum n
  | (length . show $ n) >= 1 = read . take 1 . show $ n
  | otherwise = error "The number contains less than 1 digits"

