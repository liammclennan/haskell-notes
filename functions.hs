add f s t = f + s + t

firstFirst :: (Num a) => [(a,a)] -> a
firstFirst ((f,s):xs) = f

data Person = Person {
    age       :: Int,
    name      :: String
  } deriving (Show)



data Stack a =  Nil
                | Push a (Stack a)
                deriving (Show)

pop (Push x (xs)) = (x, xs)

data LinkedList' a = LinkedList' {
    val     :: a,
    nex  :: LinkedList' a
  }
  | End
  deriving (Show)

data LinLis a = LinLis a (LinLis a)
                | LisEnd
                deriving (Show)

pi =    let n = 22
            d = 7
        in 
            n/d

pi' = n / d
      where n = 22
            d = 7

abs a
  | a < 0 = a * (-1)
  | otherwise = a