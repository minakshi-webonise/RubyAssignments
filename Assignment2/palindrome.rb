#!/usr/bin/ruby
def palindrome_try
  puts "enter string"
  str = gets.chomp
  lstr = str.downcase
  rstr = lstr.reverse
  var =  lstr.casecmp(rstr)
  if var==1
    puts "string is palindreome"
  else 
    puts "not palindrome"
  end
end
palindrome_try
