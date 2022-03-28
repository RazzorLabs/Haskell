isVowel :: Char -> Bool
isVowel x
     | x `elem` ['a', 'e', 'i', 'o', 'u'] = True
     | x `elem` ['A', 'E', 'I', 'O', 'U'] = True
     | otherwise           = False
