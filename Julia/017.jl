# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
using Base.Test

ONES = {
        0 => length("zero"),
        1 => length("one"),
        2 => length("two"),
        3 => length("three"),
        4 => length("four"),
        5 => length("five"),
        6 => length("six"),
        7 => length("seven"),
        8 => length("eight"),
        9 => length("nine"),
}


TEENS = {
        10 => length("ten"),
        11 => length("eleven"),
        12 => length("twelve"),
        13 => length("thirteen"),
        14 => length("fourteen"),
        15 => length("fifteen"),
        16 => length("sixteen"),
        17 => length("seventeen"),
        18 => length("eighteen"),
        19 => length("nineteen"),
}

TENS = {
        2 => length("twenty"),
        3 => length("thirty"),
        4 => length("forty"),
        5 => length("fifty"),
        6 => length("sixty"),
        7 => length("seventy"),
        8 => length("eighty"),
        9 => length("ninety"),
}

HUNDREDS = {
            100 => length("hundred")
}

immutable WordNumber
    thousands::String
    hundreds::String
    hundreds_digit::String
    tens::String
    tens_digit::String
    ones::String
end

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

function construct_number(num::Int)
    number = int_to_array(num)
    c = length(number)
    if c == 0
        return
    elseif c == 1
        ONES[num]
    elseif c == 2
        if number[1] == 1
            TEENS[num]
        else
            TENS[number[1]] + ONES[number[2]]
        end
    elseif c == 3
        huns = ONES[number[1]] + length("hundred")
        if number[2] == 1
            teen
            TEENS[num]
        else
            TENS[number[1]] + ONES[number[2]]
        end
    elseif c == 4
    end
end

function tests()
    @assert construct_number(1) == length("one")
    @assert construct_number(11) == length("eleven")
    @assert construct_number(21) == length("twentyone")
    @assert construct_number(101) == length("onehundredandone")
end

function deconstruct_number(num::Int)
    number = string(num)
    c = length(number)
    if c == 0
        0
    elseif c == 1
        # ones
    elseif c == 2
        # tens
    elseif c == 3
        # hundreds
    elseif c == 4
        # thousands
    end
end

# ans 21124
