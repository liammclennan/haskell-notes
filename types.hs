data BookInfo = Book Int String [String]
                | Pamphlet String
                deriving (Show)

aBook = Book 1 "Lord of the Rings" ["J.R.R. Toklien"]

page = Pamphlet "Jill"

data Colour = HexColour String
              | ComponentColour Int Int Int
              | NameColour
              deriving (Show)
