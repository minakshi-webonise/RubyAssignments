#!/usr/bin/ruby
def number_identify
  puts "enter number"
  n = Integer(gets.chomp)
  square = n *n
  puts square
  number_array = String(square).split('')
  len = number_array.length
  puts len
  puts "numbers are #{number_array[0]} #{number_array[1]}"
  if (len == 2)
    if((Integer(number_array[0]) + Integer(number_array[1])) == n)
      puts "equal"
    elsif 
     puts "not"
    end
  elsif len>2
    if len%2==0
      puts "even"
    elsif
      puts "odd"
    end
  end
end

number_identify
