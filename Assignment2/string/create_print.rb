#!/usr/bin/ruby
#method for crating array of string and traversing the array
def create_traverse(str)
  puts str
  split_str = str.split(' ')
  print split_str
  len = split_str.size
  print len
  puts "array :"
  for i in (0...len)
    print split_str[i]
  end 
end

string1 = "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."
create_traverse(string1)
