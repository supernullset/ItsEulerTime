# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.

function proper_divisors(x)
    divs = Int[]
    for i in 1:(x-1)
        if x % i == 0
            push!(divs, i)
        end
    end
    divs
end


function d(n)
    sum(proper_divisors(n))
end

function exec_021()
    amicable = Int[]
    for i in 1:10000
        tmp = d(i)
        if d(tmp) == i && tmp != i
            push!(amicable, i)
            push!(amicable, tmp)
        end
    end
    sum(unique(amicable))
end
