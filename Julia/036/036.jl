# The decimal number, 585 = 10010010012 (binary), is palindromic in both bases.

# Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.

# (Please note that the palindromic number, in either base, may not include leading zeros.)

include("/Users/supernullset/LocalCode/ProjectEuler/Julia/euler_helpers.jl")

function is_palendromic_number(number::Int64)
    is_palendromic_number("$number")
end

function is_palendromic_number(number::String)
    number == reverse(number)
end

function exec_36()
    # even numbers in binary have tailing zeros, and since leading zeros are not allowed, you can skip them
    nums = [1:2:999999]
    palendromics = filter(is_palendromic_number, nums)
    bin_palendromics = filter(n -> is_palendromic_number(bin(n)), palendromics)
    sum(bin_palendromics)
end
