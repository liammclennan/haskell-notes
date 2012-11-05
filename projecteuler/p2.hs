-- By considering the terms in the Fibonacci sequence whose values do not 
-- exceed four million, find the sum of the even-valued terms.
fibsLessThan n (x:xs) 
    | x < n = fibsLessThan n (fibGen (x:xs))
    | otherwise = (sum . (filter isEven)) xs
     where isEven i = i `mod` 2 == 0
           fibGen [] = [1]
           fibGen [1] = [1,2]
           fibGen (x:x1:xs) = x+x1:x:x1:xs
