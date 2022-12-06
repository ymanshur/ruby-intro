# frozen_string_literal: true

input = <<~STR
  Stacy Brown-Philpot is the chief operating officer of TaskRabbit, where she’s responsible for scaling and expanding the marketplace. Before TaskRabbit, she spent nearly a decade leading global operations for Google’s flagship products. She served as Head of Online Sales and Operations for Google India and opened the office in Hyderabad. Stacy was also an entrepreneur in residence at Google Ventures.
STR

WORDS = # This uses a Regular Expression (we'll learn about those later)
  input.split(/\s+|\.|,/).reject(&:empty?)

def frequency(string)
  WORDS.select { |word| word == string }.size
end

frequencies = WORDS.each.map do |word|
  [word, frequency(word)]
end

frequencies.uniq!
frequencies.sort! do |a, b|
  b[1] <=> a[1]
end

frequencies.each_with_index do |pair, index|
  puts "#{index + 1}: #{pair[0]} #{pair[1]} occurrences"
end
