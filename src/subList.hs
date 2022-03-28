import Data.List ((\\))

subList :: Eq a => [a] -> Int -> Int -> [a]
subList l x y 
  | x <= y = (\\) <$> take (y + 1) <*> take x $ l
  | otherwise = []
