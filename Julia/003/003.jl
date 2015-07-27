# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
include("/Users/supernullset/LocalCode/ProjectEuler/Julia/euler_helpers.jl")

function prime_factors(n)
    factors = Int64[]
    d = 2
    while n > 1
        while n % d == 0
            push!(factors, d)
            n /= d
        end
        d += 1
    end
    factors
end

function largest_prime_factor(n)
    maximum(prime_factors(n))
end

@test largest_prime_factor(13195) == 29

largest_prime_factor(600851475143)
