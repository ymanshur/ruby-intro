puts "Hi, my name is Ruby!"
puts "What is your name?"
name = gets.chomp
puts "Hi there #{name}, great to meet you!"

while (question = gets.chomp) != 'Bye'
  if question == 'How old are you?'
    puts "I'm 20 years old"
  end

  if question == 'Where do you live?'
    puts "Japan"
  end
end

puts "Thanks for chatting!"
