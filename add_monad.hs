instance Monad Maybe where
return x = Just x
Nothing >>= f = Nothing
Just x >>= f
= f x
fail _ = Nothing
--let's an example where monad is used

type Birds = Int
type Pole = (Birds,Birds)

landLeft :: Birds -> Pole -> Pole
landLeft n (left,right) = (left + n,right)
landRight :: Birds -> Pole -> Pole
landRight n (left,right) = (left,right + n)
