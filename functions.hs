add f s t = f + s + t

firstFirst :: (Num a) => [(a,a)] -> a
firstFirst ((f,s):xs) = f

data Person = Person {
    age       :: Int,
    name      :: String
  } deriving (Show)