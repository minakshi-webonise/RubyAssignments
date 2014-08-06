#!/usr/bin/ruby
$LOAD_PATH<<'.'
require "calculate"

class Score					#Score class uses methods in module Calculate
  include Calculate                             # include module Calculate
  def cal_percentage			  	# Methods for taking input from user and calling module method percentage	
    puts "enter mark of subject1"
    m1 = Float(gets.chomp)
    puts "enter marks of subject2"
    m2 = Float(gets.chomp) 
    puts "enter marks of subject3"
    m3 = Float(gets.chomp)
    Calculate.percentage(m1, m2, m3) 		# Call method percentage inside module Calculate
  end
end

class Interest					# Interest class for caculating simple interest			
  include Calculate				# include module Calculate
  def cal_interest				# Method for taking principle amount, period and rate from user
    puts "enter principal amount"
    p=Integer(gets.chomp)
    puts "enter no. of years"
    n = Integer(gets.chomp)
    puts "enter rate"
    r = Integer(gets.chomp)
    Calculate.interest(p, n, r) 		# call method interest to do airthmatic operation of calculating interest
  end
end

i = Interest.new				# creating Interest class object
i.cal_interest

score = Score.new				# creating Score class object
score.cal_percentage


