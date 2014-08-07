#!/usr/bin/ruby
def divide_reverse(str)
  split_str = str.split('.')
  len = split_str.size
  puts len
  reverse_str=  split_str.reverse
  for i in 0...len
    print reverse_str[i].split(" ").reverse
  end
 # puts reverse_str

end
string = "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."
divide_reverse(string) 
