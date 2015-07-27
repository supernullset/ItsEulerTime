# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

function eratosthenes(n::Int)
    factors::Array{Bool} = trues(n)
    j= 0
    for i=2:floor(sqrt(n))
        if factors[i]
            j = i^2
            while j <= n
                factors[j] = false
                j += i
            end
        end
    end
    filter((x)-> factors[x], [2:n])
end

function ans()
    sum(eratosthenes(2000000))
end
