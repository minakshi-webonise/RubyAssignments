#!/usr/bin/ruby
def print_date
  #method 1 for printing current date
  puts "by method1 (#now)"
  puts Time.now
  #method 2 for printing current date
  puts "by method2 (#inspect)"
  time = Time.new
  puts "current date with time: #{time.inspect}"
  #printing current date only
  puts "current date #{time.strftime("%Y-%m-%d")}"
end
print_date
