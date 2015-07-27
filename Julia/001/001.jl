# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.
using Base.Test
function zero_zero_one(upper_limit)
    list = Int[]
    for i in 0:(upper_limit - 1)
        if (i % 3 == 0) || (i % 5 == 0)
            push!(list, i)
        end
    end
    sum(list)
end

@test zero_zero_one(10) == 23

println(zero_zero_one(1000))

