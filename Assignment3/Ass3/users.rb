#!/usr/bin/ruby
=begin
  User class performs various operations
  viewing list of product, search by product id, buy produt
=end
class User
   @@filename = "inventory.txt"
  def choose_option
    puts "enter your choice"
    puts "1. List product"
    puts "2. Search product"
    puts "3. Buy product"
    choice = gets.chomp
    object = User.new
    case choice
      when "1"
        ShopInventory.list_product
      when "2"
        puts "enter id of product you want to search"
        p_id = gets.chomp
        ShopInventory.search_product(p_id)
      when "3"
       object.buy_product
      else
        "wrong selection made"
    end
  end

  # method for buy product
  def buy_product
    puts "in buy priduct"
    puts "enter id of product you want to buy"
    p_id = gets.chomp
    puts p_id
    write_file = File.open("orders", "a")
    File.open(@@filename,"r") do |file|
      file.each_line do |line|
        temp_array =line.split("*")
       # puts "array #{temp_array}"
        if line.include?(p_id) && Integer(temp_array[2])>0
          puts "product is present and stock :#{temp_array[2]}"
          puts "enter your name"
          c_name = gets.chomp
          puts "enter credit card number"
          credit_number = gets.chomp
          puts "enter ccv number"
          ccv_number = gets.chomp
          write_file.write("#{c_name}*#{credit_number}*#{ccv_number}\n")
        end
      end
    end
  end
end
#end