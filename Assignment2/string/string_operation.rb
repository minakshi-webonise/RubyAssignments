#!/usr/bin/ruby
def string_occurance(string)
  puts string
  if string.include? 'RUBY'
    puts "occurance of RURY #{string.scan("RUBY")}"
  else
    puts "no occurance of word ruby"
  end
  until string.scan("RUBY") do
    puts "hi" 
    puts string.index("RUBY")
  end
end

string1 = "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."
string_occurance(string1)
