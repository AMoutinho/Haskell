-- Tópicos Especiais em Sistemas para Internet III --
-- André Luiz Borges Moutinho --
-- Capítulo 3 | Exercício 3.19 --

-- Elabore um conversor de moedas Euro - Dollar

module Main where

data Cambio = Euro | Real | Dollar
  deriving (Eq, Show)

data Moeda = Moeda { val :: Double, cur :: Cambio }
  deriving (Show)

converterMoeda :: Moeda -> Cambio -> Moeda
converterMoeda (Moeda valor origem) destino
    | origem == destino = Moeda valor destino
    | origem == Euro && destino == Real = Moeda (valor * 5.2374009) Real
    | origem == Euro && destino == Dollar = Moeda (valor * 1.0659) Dollar
    | origem == Real && destino == Euro = Moeda (valor / 5.2374009) Euro
    | origem == Real && destino == Dollar = Moeda (valor / 4.9125) Dollar
    | origem == Dollar && destino == Euro = Moeda (valor / 1.0659) Euro
    | origem == Dollar && destino == Real = Moeda (valor * 4.9125) Real
    | otherwise = Moeda valor destino

main = do
  putStrLn "Conversor de Moedas!"