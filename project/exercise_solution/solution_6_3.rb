input = <<~STR
  Stacy Brown-Philpot is the chief operating officer of TaskRabbit, where she’s responsible for scaling and expanding the marketplace. Before TaskRabbit, she spent nearly a decade leading global operations for Google’s flagship products. She served as Head of Online Sales and Operations for Google India and opened the office in Hyderabad. Stacy was also an entrepreneur in residence at Google Ventures.
STR

$words = # This uses a Regular Expression (we'll learn about those later)
  input.split(/\s+|\.|,/).select do |w|
    !w.empty?
  end
def frequency(word)
  arr = $words.select do |sample|
    word == sample
  end
  arr.size
end

frequencies = $words.uniq.map do |word|
  [word, frequency(word)]
end

sorted = frequencies.sort do |a, b|
  b[-1] <=> a[-1]
end

sorted.each_with_index do |pair, index|
  puts "#{index + 1}: #{pair[0]} #{pair[-1]} occurrences"
end
