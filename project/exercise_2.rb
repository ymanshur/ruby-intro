# frozen_string_literal: true

def add(a, b)
    a + b
end

def multiply3(a, b, c)
    a * b * c
end

def describe_temperature(value)
    if value > 85
        "It's hot"
    else
        "It's not hot"
    end
    # "The temperature outside is #{value}"
end

puts describe_temperature(85)