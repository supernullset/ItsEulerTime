

## A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

## A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

## As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.

## Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.
        
include("/Users/supernullset/LocalCode/ProjectEuler/Julia/euler_helpers.jl")

function get_proper_divisors(n::Int)
    divs = [1]
    for i in 2:(int(n/2) + 1)
        if n % i == 0
            push!(divs, i)
        end
    end
    divs
end

@test get_proper_divisors(28) == [1,2,4,7,14]

function is_abundant(num::Int)
    sum(get_proper_divisors(num)) > num
end

const ABUNDANTS = IntSet(filter(x -> is_abundant(x) ==  true, [12:28123]))

function is_abundant_sum(n::Int)
    for i in ABUNDANTS
        if in((n-i),ABUNDANTS)
            return true
        end
    end
    return false
end

@test is_abundant_sum(24) == true

function calculate_sum()
    max = 28123
    sum(filter(x->!is_abundant_sum(x), 1:max))
end

@test calculate_sum() == 4179871
