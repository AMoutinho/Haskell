-- Tópicos Especiais em Sistemas para Internet III --
-- André Luiz Borges Moutinho --
-- Capítulo 7 | Exercício 7.3 -- 

-- 7.3) Crie a função mult234 :: Double -> Coisa Double que multiplica por 2 a primeira coordenada, por 3 a segunda, e por
--      4 a terceira. Use a instância de Applicative feita no exercício

data Coisa a = Coisa a a a deriving (Show, Eq)

instance Functor Coisa where
    fmap f (Coisa x y z) = Coisa (f x) (f y) (f z)

instance Applicative Coisa where
    pure x = Coisa x x x
    (Coisa f g h) <*> (Coisa x y z) = Coisa (f x) (g y) (h z)

mult234 :: Double -> Coisa Double
mult234 x = Coisa (x * 2) (x * 3) (x * 4)

main :: IO ()
main = do
    let x = 1.5
    print $ mult234 x  -- Deve imprimir: Coisa 3.0 4.5 6.0
