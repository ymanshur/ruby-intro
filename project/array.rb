# frozen_string_literal: true

animals = %w[duck horse dog cat cat]

# for animal in animals do
#   p animal
# end

# animals.each do |animal|
#   p animal
# end
animals.each { |animal| p animal }

# p animals.include?('cat')
# p animals.size
# p animals.sort
# p animals
# p animals.reverse
# p animals.uniq

puts animals.find do |animal|
  # animal[0] == 'd'
  animal.length < 4
end

puts animals.map(&:upcase)

puts animals.sort do |a, b|
  a.length <=> b.length
end

animals.each_with_index do |animal, index|
  puts "#{index}: #{animal}"
end
