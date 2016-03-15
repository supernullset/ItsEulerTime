module P009 (solution) where

{-
problem 9:
A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
-}
{-
step 1: define pythagorean triplet
step 2: define does sum to 1000
step 2: takeWhile sum3 (a,b,c) = 1000
-}

pythagTest :: (Int, Int, Int) -> Bool
pythagTest (a,b,c) | ((a^2) + (b^2) == (c^2)) && (a<b) && (b<c) = True
                   | otherwise = False


--I gave up here and put in the haskell.org definition.  I think that my solution will work ultimately, but it is very very much inefficient and not partularly elegant.  The better solution is defined by actual mathematical relationships as opposed to pure contraints.
triplets l = [[a,b,c] | m <- [2..limit],
                        n <- [1..(m-1)], 
                        let a = m^2 - n^2, 
                        let b = 2*m*n, 
                        let c = m^2 + n^2,
                        a+b+c==l]
    where limit = floor . sqrt . fromIntegral $ l

solution = (product . head . triplets $ 1000)
--  let triplet = [ [a,b,c] | a <- [0..1000], b <-[0..1000], c <- [0..1000], pythagTest (a,b,c) == True, (a+b+c) == 1000]


