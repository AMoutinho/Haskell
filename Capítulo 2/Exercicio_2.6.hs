-- Tópicos Especiais em Sistemas para Internet III --
-- André Luiz Borges Moutinho --
-- Capítulo 2 | Exercício 2.6 -- 

--Faça uma função que receba uma String	e retorne True se esta for um palíndromo; caso contrário, False.

ehPalindromo :: String -> Bool
ehPalindromo xs = xs == reverse xs

-- TESTE LÓGICO --
--ghci> ehPalindromo "mesas"
--False
--ghci> ehPalindromo "salas"
--True