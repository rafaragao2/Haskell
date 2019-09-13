pesoIdeal :: Float -> Float -> Float
pesoIdeal h pAtual | ((pAtual/(h^2)) <= 25) && ((pAtual/(h^2)) >= 18.5) = 0
                   | ((pAtual/(h^2)) > 25) = pAtual - (25*(h^2)) -- Resultado > 0 demonstra a quantidade de massa em excesso, logo, quantos Kg deve perder.
                   | ((pAtual/(h^2)) < 18.5) = pAtual - (18.5*(h^2)) -- Resultado < 0 demonstra quantidade de massa em falta, logo, quantos Kg deve ganhar.