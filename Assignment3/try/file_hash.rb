#!/usr/bin/ruby
test = "3 telev­isions at 722.4­9"
foo = test.­split(" ")
hash = {1=>{:item=>foo[1..-3]­.join(" "),:q­uantity=>foo[0], :price=>foo[-1]}}

=> {1=>{:item=>"televisions", :quantity=>"3", :price=>"722.49"}}
