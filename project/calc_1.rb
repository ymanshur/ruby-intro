# frozen_string_literal: true

def add(num_a, num_b)
  display(num_a + num_b)
end

def substract(num_a, num_b)
  display(num_a - num_b)
end

def square_root(num)
  display(Math.sqrt(num))
end

def sphere_area(diameter)
  display(Math::PI * diameter**2)
end

def display(result)
  puts format('%.2f', result)
end

puts 'Welcome to calculator'

print 'What operator would you like to use? '
operator = gets.chomp

print 'What is the first operand? '
op_a = gets.chomp.to_f

if operator != 'sqrt' && operator != 'sphere_area'
  print 'What is the second operand? '
  op_b = gets.chomp.to_f
end

add(op_a, op_b) if operator == 'add'
substract(op_a, op_b) if operator == 'substract'
square_root(op_a) if operator == 'sqrt'
sphere_area(op_a) if operator == 'sphere_area'
