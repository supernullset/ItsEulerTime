## Take the number 192 and multiply it by each of 1, 2, and 3:

## 192 × 1 = 192
## 192 × 2 = 384
## 192 × 3 = 576
## By concatenating each product we get the 1 to 9 pandigital, 192384576. We will call 192384576 the concatenated product of 192 and (1,2,3)

## The same can be achieved by starting with 9 and multiplying by 1, 2, 3, 4, and 5, giving the pandigital, 918273645, which is the concatenated product of 9 and (1,2,3,4,5).

## What is the largest 1 to 9 pandigital 9-digit number that can be formed as the concatenated product of an integer with (1,2, ... , n) where n > 1?
include("/Users/supernullset/LocalCode/ProjectEuler/Julia/euler_helpers.jl")
using Base.Test

function concatenated_product(n, tpl)
    temp_list = map(x -> x * n, tpl)  # multiply n by every elem in t 
    string_list = map(string, temp_list) #map str across temp_list
    candidate = reduce((x,y)-> x*y, string_list)
    BigInt(candidate)
end

@test concatenated_product(192, [1 2 3]) == 192384576
@test concatenated_product(9, [1 2 3 4 5]) == 918273645

function solution()
    TERMINATOR = 123456789 + 1
    pandigitals = []
    n = 1
    pandigital_set = Set([1:9])
    for i in [n:TERMINATOR]
        for j in [n:TERMINATOR]
            cp = string(concatenated_product(i, [1:j]))
            # candidates = filter (len(s) == 9) string_list
            
            if length(cp) == 9
                if Set(cp) == pandigital_set
                    # pandigitals push -> filter set(candidates) == {1 2 3 4 5 6 7 8 9}
                    push!(int(cp), pandigitals)
                end
            end
            # sort pandigitals take last
        end
    end
    pandigitals
end
