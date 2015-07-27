# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


# Brute
function is_evenly_divisible(number, upper_limit)
    range = 1:upper_limit
    for i in range
        if number % i != 0
            return false
        end
    end
    true
end

function get_even_div_by_twenty()
    i = 1
    while true
        if is_evenly_divisible(i, 20)
            return i
        end
        i += 1
    end
end

function clean_get_div()
    range = 1:20
    reduce((x, n)-> lcm(x,n), 1, range)
end
