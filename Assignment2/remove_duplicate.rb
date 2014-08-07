#!/usr/bin/ruby
class Remove_Duplicate
def non_duplicated_values
  puts "enter size of array"
  n = Integer(gets.chomp)
  arr = Array.new(n-1)
  puts "enter array elements"
  for i in (0...n)
    arr[i] = Integer(gets.chomp)
  end
  puts "array  : #{arr}"
  arr.uniq
end
end

duplicate = Remove_Duplicate.new
v = duplicate.non_duplicated_values
puts v
