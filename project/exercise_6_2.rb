# frozen_string_literal: true

input = <<~STR
  Stacy Brown-Philpot is the chief operating officer of TaskRabbit, where she’s responsible for scaling and expanding the marketplace. Before TaskRabbit, she spent nearly a decade leading global operations for Google’s flagship products. She served as Head of Online Sales and Operations for Google India and opened the office in Hyderabad. Stacy was also an entrepreneur in residence at Google Ventures.
STR

WORDS = input.split(/\s+|\.|,/).reject(&:empty?) # This uses a Regular Expression (we'll learn about those later)

# WORDS is a special variable called a global variable (indicated by the capslock words )
# It is an array of all the words in the input string and you can use it to perform this exercise
#
# For example to access the 5th word in the array do:
#
#    WORDS[4]
#
# Your code starts here

p WORDS
p WORDS.sort
p WORDS.reverse
