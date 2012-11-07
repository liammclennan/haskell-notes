-- What is the largest prime factor of the number 600851475143 ?

-- The fundamental theorem of arithmetic (http://en.wikipedia.org/wiki/Fundamental_theorem_of_arithmetic)
-- says that every natural number (except one) is the product of exactly one collection
-- of prime numbers. Therefore, my algorithm to find the largest prime factor is:
--      1. determine the collection of prime factors
--      2. find the largest number in the collection

largestPrime n = maximum (factorize n)

factorize n
    | fst (smallestPrimeFactor n) == n = firstFactor : []
    | otherwise = firstFactor : factorize quotient
        where (firstFactor,quotient) = smallestPrimeFactor n

smallestPrimeFactor :: (Integral t) => t -> (t, t)
smallestPrimeFactor n = (smallestPrime, n `div` smallestPrime)
    where 
        naturals = [2,3..]
        smallestPrime = first (isDivisibleBy n) naturals

isDivisibleBy x y = x `mod` y == 0

first f (x:xs)
    | f x = x
    | otherwise = first f xs

