# frozen_string_literal: true

def print_time_24 # rubocop:disable Naming/VariableNumber
  puts Time.now.strftime('%H:%M')
end

def print_time_12 # rubocop:disable Naming/VariableNumber
  puts Time.now.strftime('%I:%M %P')
end

print_time_24
print_time_12
