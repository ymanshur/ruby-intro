# frozen_string_literal: true

balances = {
  'Dan' => 1000, # => hash rocket
  'Jess' => 1000,
  'Bryan' => 1000,
  'Kath' => 1000
}

sum = 0
balances.each_pair do |_name, balance|
  sum += balance
  puts "#{name} has $#{balance}"
end

puts "In total there is $#{sum}"

char_hash = { 3 => 'c', 1 => 'a', 2 => 'b' }
char_hash.each_key { |key| puts char_hash[key] }

sorted_arrhash = char_hash.sort do |(key1, _val1), (key2, _val2)|
  key1 <=> key2
end
p sorted_arrhash
puts Hash[sorted_arrhash]

users = [
  { name: 'Dan', email: 'dan@coderdan.co' },
  { name: 'Yusuf', email: 'yusuf@example.com' }
]

user = users.find do |u|
  u[:name] == 'Yussuf'
end

if user
  puts user[:email]
else
  puts 'No user found'
end
