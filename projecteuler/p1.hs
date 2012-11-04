-- Find the sum of all the multiples of 3 or 5 below 1000

-- using sum and a list comprehension
p1 :: Integer
p1 = sum [i | i <- [1..999], i `mod` 3 == 0 || i `mod` 5 == 0]


-- using sum and a local function
p1' = sum [i | i <- [1..999], divBy3Or5 i]
      where divBy3Or5 a =  a `mod` 3 == 0 || a `mod` 5 == 0


-- using foldr to implement sum
p1'' = foldr (+) 0 [i | i <- [1..999], divBy3Or5 i]
       where divBy3Or5 a =  a `mod` 3 == 0 || a `mod` 5 == 0

