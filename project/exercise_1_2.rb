# frozen_string_literal: true

puts 'Hi, my name is Manshur'
print 'What is your name? '
name = gets.chomp
puts "Hi there #{name}, great to meet you!"

question = gets.chomp
puts "I'am 20 years old" if question == 'How old are you?'
puts 'Indonesia' if question == 'Where do you live?'
