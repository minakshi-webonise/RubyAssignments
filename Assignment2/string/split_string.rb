#!/usr/bin/ruby
def split_string(str)
  #puts str
  split_str = str.split('', 4)
  puts split_str
end
string = "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."
split_string(string)
  
