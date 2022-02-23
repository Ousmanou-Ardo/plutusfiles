instance Monad Maybe where
return x = Just x
Nothing >>= f = Nothing
Just x >>= f
= f x
fail _ = Nothing
