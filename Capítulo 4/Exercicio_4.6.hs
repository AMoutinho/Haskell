-- Tópicos Especiais em Sistemas para Internet III --
-- André Luiz Borges Moutinho --
-- Capítulo 4 | Exercício 4.6 --

--Faça uma função func que receba uma função f de tipo (String -> String), e uma String s que retorna o reverso de s concatenado com aplicação da função f em s.

func :: (String -> String) -> String -> String
func f s = f s ++ reverse(s)

--ghci> func (\x -> "beterraba") "abobora"   
--"beterrabaaroboba"