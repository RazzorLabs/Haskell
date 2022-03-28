digits :: Integer -> [Int]
digits n =
   let n = map (\x -> read [x] :: Int) (show n)
   in take 1 n
