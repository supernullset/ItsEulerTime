module P045 (
  solution
  ) where

triangle n = n * (n+1) / 2 -- this is a superset of hexagon (sub 2n - 1 in triangle to prove this)
pentagon n = n * (3*n -1) / 2
hexagon n = n * (2*n -1)

isPentagonal n = floating == 0
  where (_, floating) = properFraction $ pentagonTest
        pentagonTest = (sqrt(1 + 24 * (fromInteger n)) + 1) / 6

-- With this tidbit of knowledge, we really only need to search the hexagonal numbers with odd inputs, and see if the value is pentagonal!
solution = getNext 145
  where
    getNext n = if (isPentagonal $ hexagon n) == True
                then hexagon n
                else getNext (n+2)
