#!/usr/bin/ruby
#method for adding days in curretn date
def add_days
  t = Time.now
  puts "current date : #{t}"
  future_date = t + 1728000
  puts "date after 20 days : #{future_date}"

end
add_days


