# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
include("/Users/supernullset/LocalCode/ProjectEuler/Julia/euler_helpers.jl")

function is_palendromic_number(number)
    s_num = "$number"
    s_num == reverse(s_num)
end

function calc_large_palindromic()
    vals = Int64[]
    for top in reverse(100:999)
        for i in reverse(100:999)
            val = top * i
            if is_palendromic_number(val)
                push!(vals, val)
            end
        end
    end
    maximum(vals)
end
