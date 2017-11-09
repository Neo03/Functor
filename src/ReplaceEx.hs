module ReplaceEx where

replaceWithP :: b -> Char
replaceWithP = const 'p'

lms :: [Maybe[Char]]
lms = [Just "Ave", Nothing, Just "woohoo"]

replaceWithP' :: [Maybe[Char]] -> Char
replaceWithP' = replaceWithP

liftedReplace :: Functor f => f a -> f Char
liftedReplace = fmap replaceWithP

liftedReplace' :: [Maybe[Char]] -> [Char]
liftedReplace' = liftedReplace

twiceLifted :: (Functor f1, Functor f) => f(f1 a) -> f(f1 Char)
twiceLifted = (fmap . fmap) replaceWithP

twiceLifted' :: [Maybe[Char]] -> [Maybe Char]
twiceLifted' = twiceLifted

triceLifted :: (Functor f2, Functor f1, Functor f) => f2(f1(f a)) -> f2(f1(f Char))
triceLifted = (fmap . fmap . fmap) replaceWithP

triceLifted' :: [Maybe[Char]] -> [Maybe[Char]]
triceLifted' = triceLifted
