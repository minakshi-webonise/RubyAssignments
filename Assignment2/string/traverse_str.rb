#!/usr/bin/ruby
def traverse_string(str)
  print str.scan("RUBY")
end

string = "RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."
traverse_string(string)

