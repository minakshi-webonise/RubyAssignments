#!/usr/bin/ruby
#method for adding days in curretn date
def add_days
  t = Time.now
  puts "current date : #{t}"
  future_date = t + 604800
  puts "date after 7 days : #{future_date}"
 
end
add_days
  
