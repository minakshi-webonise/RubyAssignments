#!/usr/bin/ruby
def cal_cube_sum(a , b)
  puts a 
  puts b
  sum=0
  for i in a..b
    sum +=(i*i*i)
  end
  puts sum
end

a = Integer(ARGV[0])
b = Integer(ARGV[1])
cal_cube_sum(a,b)
