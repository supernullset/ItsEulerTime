## The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left to right, and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.

## Find the sum of the only eleven primes that are both truncatable from left to right and right to left.

## NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.
include("/Users/supernullset/LocalCode/ProjectEuler/Julia/euler_helpers.jl")

## function calculate_rotations(s::Int)
##     r = string(s)
##     l = length(r)
##     rots = String[]
##     for i in 1:l
##         r = *(r[2:end], string(r[1]))
##         push!(rots,r)
##     end
##     map(int, rots)
## end

function l_pop_prime(i::Int)
    s = string(i)
    l = length(s)
    for i in 1:l
        r = s[i:end]
        if !isprime(int(r))
            return false
        end
    end
    true
end

function l_pop_prime(s::String)
    l_pop_prime(int(s))
end

function r_pop_prime(i::Int)
    s = string(i)
    l = length(s)
    for i in 0:l-1
        r = s[1:end-i]
        if !isprime(int(r))
            return false
        end
    end
    true
end

function r_pop_prime(s::String)
    r_pop_prime(int(s))
end

# This uses way less GC time than the iterator version
function exec_37()
    p_list = primes(1_000_000)
    p = Int64[]
    while length(p) <= 11
        for n in p_list
            sn = string(n)
            if length(sn) > 1
                if r_pop_prime(sn) && l_pop_prime(sn)
                    println(n)
                    push!(p, n)
                end
            end
        end
        break
    end
    sum(p)
end

function exec_37_i()
    p = Int64[]
    while length(p) <= 11
        for n in primes(1_000_000)
            sn = string(n)
            if length(sn) > 1
                if r_pop_prime(sn) && l_pop_prime(sn)
                    println(n)
                    push!(p, n)
                end
            end
        end
        break
    end
    sum(p)
end



