#!/usr/bin/ruby
class Airthmatic
  #method for doing operation like addition, substraction, division, multipication
  def operation (operand1 , operand2, operator) 
    if operator == "+"
      puts "addition #{Integer(operand1) + Integer(operand2)}"
    elsif operator == "-"
      puts "substraction is #{Integer(operand1) - Integer(operand2)}"
    elsif operator == "*"
      puts "multipication is #{Integer(operand1) * Integer(operand2)}"
    elsif operator == "/"
      puts "division is #{Integer(operand1) / Integer(operand2)}"
    else
      puts "no arguments passed or wrong operator"
    end
  end
end

#creating object of class Airthmatic
operate = Airthmatic.new

#calling methhod operation from object of class Airthmatic
operate.operation(ARGV[0], ARGV[1], ARGV[2])

