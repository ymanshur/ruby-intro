# frozen_string_literal: true

animals = %w(duck horse dog cat cat)

# for animal in animals do
#   p animal
# end

# animals.each do |animal|
#   p animal
# end
animals.each { |animal| p animal }

p animals.include?('cat')
p animals.size
p animals.sort
p animals
p animals.reverse
p animals.uniq