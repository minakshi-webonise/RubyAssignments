#!/usr/bin/ruby
=begin
module will include common methods like list_product and search which are common
for both shopkeepres and users.
=end
module ShopInventory
  @@filename = "inventory.txt"
  # list_product method will list all products with id and their details
  def self.list_product
    puts "product information :"
    puts "id \t name \t stock \t company name "
    File.open(@@filename, "r").each_line do |line|
      temp_array = line.split("*")
      puts "#{temp_array[0]}\t#{temp_array[1]}\t#{temp_array[2]}\t #{temp_array[3]}"
    end
  end

  # search_product method will search product with argument passes either id or name
  def self.search_product(arg)
    puts "id \t name \t stock \t company name "
    File.open(@@filename ,"r") do |file|
      file.each_line do |line|
        temp_array = line.split("*")
        unless temp_array[0] == arg

        else
          puts "#{temp_array[0]}\t#{temp_array[1]}\t#{temp_array[2]}\t #{temp_array[3]}"
        end
      end
    end
  end
end