## 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

## Find the sum of all numbers which are equal to the sum of the factorial of their digits.

## Note: as 1! = 1 and 2! = 2 are not sums they are not included.

## http://en.wikipedia.org/wiki/Factorion
## TODO: Prove this:

## If n is a natural number of d digits that is a factorion, then 10d − 1 ≤ n ≤ 9!d. This fails to hold for d ≥ 8 thus n has at most 7 digits, and the first upper bound is 9,999,999. But the maximum sum of factorials of digits for a 7 digit number is 9!*7 = 2,540,160 establishing the second upper bound. Going further, 9!6 is 2,177,280, and the only 7 digit number not larger than 2,540,160 containing six 9's is 1,999,999, which is not a factorion by inspection. The next highest sum would be given by 1,999,998, yielding a third upper bound of 1,854,721.

include("/Users/supernullset/LocalCode/ProjectEuler/Julia/euler_helpers.jl")

function factorial_sum(n::Int64)
    # TODO: This could be much faster with type hinting
    sum(map(c -> factorial(int(string(c))) , collect(string(n))))
end

function solution()
    # subtract 2 and 1 because they are not sums. as per the questions definition
    sum(filter(n-> factorial_sum(n) == n, 1:1854721)) - 2 -1
end

