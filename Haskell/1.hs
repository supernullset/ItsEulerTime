--main = do
  --let blwthous = [0..999]

--  let x = map (\z -> mod z 3 == 0 || mod z 5 ==0) blwthous

  --let x = filter (\z -> mod z 3 == 0 || mod z 5 ==0) blwthous
--  print (sum x)

module Main where

main :: IO()
main = print (sum $ filtered [0..999])
                  where
                    filtered nums = filter (\z -> mod z 3 == 0 || mod z 5 ==0) nums