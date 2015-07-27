# Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

#     1634 = 14 + 64 + 34 + 44
#     8208 = 84 + 24 + 04 + 84
#     9474 = 94 + 44 + 74 + 44

# As 1 = 14 is not a sum it is not included.

# The sum of these numbers is 1634 + 8208 + 9474 = 19316.

# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

function number_to_array(n)
    len = int(floor(log(float(n))))+1
    arr = Int[]
    while n != 0
        push!(arr, floor(n % 10))
        n = floor(n/10)
    end
    arr
end

function is_fifth_power(x)
    tmp = "$x"
    s = reduce((a, l)-> a + l^5, 0, number_to_array(x))
    if s == x
        true
    else
        false
    end
end
