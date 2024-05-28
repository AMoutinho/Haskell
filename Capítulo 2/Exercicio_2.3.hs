-- Tópicos Especiais em Sistemas para Internet III --
-- André Luiz Borges Moutinho --
-- Capítulo 2 | Exercício 2.3 -- 

--Escreva uma função que receba um vetor de Strings e retorne uma lista	com	todos os elementos em ordem reversa.
reverteStrings :: [String] -> [String]
reverteStrings xs = reverse xs

reverteStrings2 :: [String] -> [String]
reverteStrings2 xs = [ reverse x | x <- xs ]

-- TESTE LÓGICO --
--ghci> reverteStrings ["Python","Java","Haskell"]
--["Haskell","Java","Python"]
--ghci> reverteStrings2 ["Python","Java","Haskell"]
--["nohtyP","avaJ","lleksaH"]