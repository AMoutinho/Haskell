-- Tópicos Especiais em Sistemas para Internet III --
-- André Luiz Borges Moutinho --
-- Capítulo 3 | Exercício 3.4 --

--Faça uma função que retorne uma string, com todas as vogais maiúsculas e	minúsculas eliminadas de uma string	passada por	parâmetro usando list compreenshion.

eliminarVogais :: String -> String
eliminarVogais xs = [ x | x <- xs, x `notElem` "AEIOUaeiou" ]

--ghci> eliminarVogais "Bom dia, BOA TARDE, boa noite"
--"Bm d, B TRD, b nt"

main = do
  putStrLn "Exercicio 3.4"