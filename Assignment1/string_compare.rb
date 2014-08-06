#!/usr/bin/ruby
#class for comparing two string taken as input from user
class CompareString
#method containg logic of comparing strings
  def compare(str1, str2)   
    if str1 == str2
      puts "strings are equal"
    else
      puts "strings are not equal"
    end
  end
end

#creating object of class CompareString
c = CompareString.new

#taking input from user
puts "enter first string"
str1 = gets.chomp
puts "enter second string"
str2 = gets.chomp

#calling compare method
c.compare(str1,str2)
