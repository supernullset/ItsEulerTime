# n! means n × (n − 1) × ... × 3 × 2 × 1

# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!

function int_to_array(number)
    if number == 0
        return Int[]
    end
    temp = string(number)
    arr = Int[]
    kind = length(temp)
    for i in [1:kind]
        push!(arr, temp[i] - '0')
    end
    arr
end

function sum_digit(num::Int)
    temp = int_to_array(factorial(convert(BigInt, 100)))
    sum(temp)
end
