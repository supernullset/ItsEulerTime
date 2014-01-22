# The decimal number, 585 = 10010010012 (binary), is palindromic in both bases.

# Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.

# (Please note that the palindromic number, in either base, may not include leading zeros.)

# TODO: Fix.
# This is currently Borked
function int_to_binary(x)
    s = ""
    b = 2
    while x > 1
        m = x % b
        x = int(floor(x / b))
        s = s*"$m"
    end
    BigInt(s)
end

function is_palendromic_number(number)
    s_num = "$number"
    s_num == reverse(s_num)
end


function exec_36()
    nums = [1:1000000]
    filter!(is_palendromic_number, nums)
    mapping = Dict()
    for n in nums
        mapping[n] = int_to_binary(n)
    end
    agg = BigInt[]
    for (k,v) in mapping
        if is_palendromic_number(v)
            println("$k: $v")
            push!(agg, k)
        end
    end
    agg
end
