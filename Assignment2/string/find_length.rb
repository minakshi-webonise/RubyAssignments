#!/usr/bin/ruby
def find_length(str1, str2)
  string1_len = str1.length
  string2_len = str2.length
  puts "length od string1 : #{string1_len} \n string2 #{string2_len}"
end

string1 = "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."

string2 = " RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is determined by the context in which the variable is used."

find_length(string1, string2)

