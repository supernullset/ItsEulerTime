## The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.

## There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

## How many circular primes are there below one million?

include("/Users/supernullset/LocalCode/ProjectEuler/Julia/euler_helpers.jl")

function calculate_rotations(s::Int)
    r = string(s)
    l = length(r)
    rots = String[]
    for i in 1:l
        r = *(r[2:end], string(r[1]))
        push!(rots,r)
    end
    map(int, rots)
end

function is_circular_prime(n::Int)
    for i in calculate_rotations(n)
        if isprime(i) == false
            return false
        end
    end
    true
end

function circular_primes_below(n::Int)
    counter = 0
    for i in 1:n
        if is_circular_prime(i)
            counter+=1
        end
    end
    counter
end

@test is_circular_prime(197) == true
@test circular_primes_below(100) == 13

function answer()
    ## Currently too slow
    circular_primes_below(1000000)
end
