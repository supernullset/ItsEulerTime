# The Fibonacci sequence is defined by the recurrence relation:

#     Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.

# Hence the first 12 terms will be:

#     F1 = 1
#     F2 = 1
#     F3 = 2
#     F4 = 3
#     F5 = 5
#     F6 = 8
#     F7 = 13
#     F8 = 21
#     F9 = 34
#     F10 = 55
#     F11 = 89
#     F12 = 144

# The 12th term, F12, is the first term to contain three digits.

# What is the first term in the Fibonacci sequence to contain 1000 digits?

function execute_25()
    F = [BigInt(1) BigInt(1); BigInt(1) BigInt(0)]
    n = 1
    fibs = BigInt[]
    f_n1 = 0
    while length(string(f_n1)) < 1000
        F_n  = f ^ n
        f_n  = F_n[2]
        f_n1 = F_n[1]
        push!(fibs, f_n)
        push!(fibs, f_n1)
        n += 2
    end
    n - 1
end
