#!/usr/bin/ruby
=begin
  User class performs various operations
  viewing list of product, search by product id, buy produt
=end
class User
   @@filename = "inventory.txt"
    def operation1
    puts "enter your choice"
    puts "1. List product"
    puts "2. Search product"
    puts "3. Buy product"
    choice = gets.chomp
    object = User.new
    case choice
	  when "1"
	    object.list_product
	  when "2"
	    object.search_product
	  when "3"
	    object.buy_product
	  else
	    "wrong selection made"
    end
  end

  #  method for listing details of product
  def list_product
    puts "in list product"
    puts "product information :"
    puts "id \t name \t stock \t company name "
    File.open(@@filename, "r").each_line do |line|
      temp_array = line.split("*")
      puts "#{temp_array[0]}\t#{temp_array[1]}\t#{temp_array[2]}\t #{temp_array[3]}"
    end
  end

  # method for searching product by product id
  def search_product
    puts "enter id of product you want to search"
    p_id = gets.chomp
    puts "id \t name \t stock \t company name "
    File.open(@@filename ,"r") do |file|
      file.each_line do |line|
        temp_array = line.split("*")
        unless temp_array[0] == p_id

        else
          puts "#{temp_array[0]}\t#{temp_array[1]}\t#{temp_array[2]}\t #{temp_array[3]}"
        end
      end
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
        if line.include?(p_id)
          puts "product is present"
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