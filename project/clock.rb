# frozen_string_literal: true

loop do
  print "\r" + Time.now.strftime('%H:%M:%S on %B %d, %Y')
  sleep 1
end
