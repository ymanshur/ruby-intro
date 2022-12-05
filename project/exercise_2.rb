# frozen_string_literal: true

def add(num1, num2)
  num1 + num2
end

def multiply3(num1, num2, num3)
  num1 * num2 * num3
end

def describe_temperature(value)
  if value > 85
    "It's hot"
  else
    "It's not hot"
  end
  # "The temperature outside is #{value}"
end

def divide(num, den)
  num.to_f / den
end

# puts describe_temperature(85)
puts divide(85, 3)
