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
=begin
  Shopkeeper class performs various operations like adding product details,
  viewing list of product, search by product name, edit produt
=end
class ShopKeeper
  @@flag = 0
  def operation
    puts "enter your choice"
    puts "1. Add product"
    puts "2. Remove product"
    puts "3. List product"
    puts "4. search product"
    puts "5. Edit product"
    choice = gets.chomp
    object = ShopKeeper.new
    case choice
    when "1"
      object.add_product
    when "2"
      object.remove_product
    when "3"
      object.search_product
    when "4"
      object.edit_product
    else
      "wrong selection made"
    end
  end
  # add_product method will add product details such as name, id, stock item, company name to inventory file
  def add_product
    puts "in shop keeper"
    puts "please enter product details"
    print "id : "
    id = gets.chomp
    print "name :"
    name = gets.chomp
    print "stock :"
    stock = gets.chomp
    print "company name :"
    c_name = gets.chomp
    puts "product details are #{id} #{name} #{stock} #{c_name}"
    file = "inventory.txt"
    File.open(file, 'a') do |file|
      file.write( id )
      file.write(" \t ")
      file.write (name )
      file.write(" \t ")
      file.write(stock)
      file.write(" \t ")
      file.write(c_name)
      file.write("\n")
    end
  end
end
=begin
  User class performs various operations
  viewing list of product, search by product id, buy produt
=end
class User
  def user_info
    puts "in user"
  end
end
obj = Main.new
obj.method
