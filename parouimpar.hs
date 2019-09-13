parImpar :: Integer -> String
parImpar x | ((mod x 2) == 0) = "Par"
           | otherwise = "Impar"