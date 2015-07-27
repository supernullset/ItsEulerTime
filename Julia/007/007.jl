# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

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
