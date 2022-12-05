# frozen_string_literal: true

def my_method(name)
  puts name
end

# my_method "Yusuf"

def increase_by_ten(number)
  number + 10
end

# puts increase_by_10(20)

def my_method2(val1, val2)
  return val1 + val2 if val1 < 100

  val1 - val2
end

puts my_method2(200, 10)
