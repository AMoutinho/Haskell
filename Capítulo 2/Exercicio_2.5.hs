-- Tópicos Especiais em Sistemas para Internet III --
-- André Luiz Borges Moutinho --
-- Capítulo 2 | Exercício 2.5 -- 

--Escreva a função head como composição de duas outra
funcaoHead :: [a] -> a
funcaoHead = last . take 3

-- TESTE LÓGICO --
--ghci> funcaoHead [1..10]
--3