#!/usr/bin/ruby
#Main class of program which identifies user
class Main
  #includes method related to identification of user
  def method
    puts "Enter user type"
    puts "1. ShopKeeper"
    puts "2 . User"
    user_type = gets.chomp
    case user_type
    when "1"
      object = ShopKeeper.new
      object.operation
    when "2"
      object = User.new
      object.user_info
    else
      puts "incorrect type of user"
   end
  end
end