#!/usr/bin/ruby
def method
  data = "i am minakshi"
  puts data
  foo = data.split(" ")
  puts foo
  hash = {1=>{:item=>foo[1],:q­uantity=>foo[0], :price=>foo[-1]}}
  puts "hask"
  puts hash
end
method