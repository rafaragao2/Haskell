-- Escreva uma funçao em Haskell que obtenha a diferença
-- entre a soma dos n primeiros numeros naturais impares
-- e os m primeiros numeros naturais pares.

imparElemento :: Integer -> Integer
imparElemento n | n == 1    = 1
                | otherwise = imparElemento (n - 1) + 2

impares :: Integer -> Integer                    
impares 1 = 1
impares 2 = 3 + impares 1
impares n = sum [1, 3..imparElemento n]

parElemento :: Integer -> Integer
parElemento m | m == 1    = 2
              | otherwise = parElemento (m - 1) + 2

pares :: Integer -> Integer          
pares 1 = 2
pares 2 = 4 + pares 1
pares m = sum [2, 4..parElemento m]

diferenca :: Integer -> Integer -> Maybe Integer
diferenca n m | (n <= 0) || (m <=0) = Nothing
              | otherwise           = Just (impares n - pares m)