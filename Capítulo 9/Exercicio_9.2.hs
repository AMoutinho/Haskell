-- Tópicos Especiais em Sistemas para Internet III --
-- André Luiz Borges Moutinho --
-- Capítulo 9 | Exercício 9.2 -- 

-- 9.2) Faça um programa que mostre uma palavra em ordem
--      reversa a partir de uma digitada pelo usuário. 

module Main where

main :: IO ()
main = do
  putStrLn "Digite uma palavra"
  x <- getLine
  putStrLn $ "A palavra ao contrário é: "++ reverse x
