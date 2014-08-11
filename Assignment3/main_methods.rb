#!/usr/bin/ruby
#Main class of program which identifies user

require_relative "shopkeepers.rb"
require_relative "users.rb"
class MainMethod

  #includes method related to identification of user
  def main_method
    puts "Enter user type"
    puts "1. Shop keeper"
    puts "2 . User"
    user_type = gets.chomp
    case user_type
      when "1"
        object = ShopKeeper.new
        object.choose_option
      when "2"
        object = User.new
        object.choose_option
      else
        puts "incorrect type of user"
    end
  end
end
obj = MainMethod.new
obj.main_method
