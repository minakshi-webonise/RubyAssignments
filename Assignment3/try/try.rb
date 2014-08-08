#!/usr/bin/ruby
file = File.open "a.txt","r+"
file.each do |line|
  line = line.chomp
  if(line=="bbb")then
  file.puts "big"
  end
end
file.close
