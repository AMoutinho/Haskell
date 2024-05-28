-- Tópicos Especiais em Sistemas para Internet III --
-- André Luiz Borges Moutinho --
-- Capítulo 4 | Exercício 4.7 --
 
--Crie um tipo Dia contendo os dias da semana. Faça uma função que receba uma lista de Dias e filtre as Terças.

data Dia = Segunda | Terca | Quarta | Quinta | Sexta | Sabado | Domingo deriving (Show, Eq)

filtraTercas :: [Dia] -> [Dia]
filtraTercas = filter(\ x -> x == Terca)

--ghci> filtraTercas [Segunda, Terca, Domingo, Quinta, Terca, Sabado, Terca]              
--[Terca,Terca,Terca]