-- Tópicos Especiais em Sistemas para Internet III --
-- André Luiz Borges Moutinho --
-- Capítulo 2 | Exercício 2.2 -- 

--Crie uma função que verifique se o tamanho de uma String é par ou não. Use Bool como retorno.

tamanhoEhPar :: String -> Bool
tamanhoEhPar xs = even $ length xs

-- TESTE LÓGICO --
--ghci> tamanhoEhPar "alohomora"
--False
--ghci> tamanhoEhPar "patolino" 
--True