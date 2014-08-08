#!/usr/bin/ruby
=begin
  Shopkeeper class performs various operations like adding product details,
  viewing list of product, search by product name, edit produt
=end
$LOAD_PATH<<'.'
require "modules.rb"
require 'fileutils'
class ShopKeeper
  include ShopInventory
  @@filename = "inventory.txt"
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
        ShopInventory.list_product
      when "4"
        puts "enter name of product you want to search"
        p_name = gets.chomp
        ShopInventory.search_product(p_name)
      when "5"
        object.edit_product
      else
        "wrong selection made"
    end
  end

  # add_product method will add product details such as name, id, stock item, company name to inventory file
  def add_product
    puts "please enter product details"
    print "id : "
    id = gets.chomp
    print "name :"
    name = gets.chomp
    print "stock :"
    stock = gets.chomp
    print "company name :"
    c_name = gets.chomp
      File.open(@@filename, 'a') do |file|
        file.write("#{id}*#{name}*#{stock}*#{c_name}\n")
      end
  end

  # remove_product method will remove details of product depending on id
  def remove_product
  puts "enter id of product which you want to delete"
  id = (gets.chomp)
  File.open(@@filename, 'r') do |f|
    File.open('file.txt', 'w') do |f2|
      f.each_line do |line|
        f2.write(line) unless line.start_with? "#{id}"
      end
    end
  end
  File.rename("file.txt",@@filename)
  end

=begin

rescue Exception => e


  # list_product method will list all products with id and their details
  def list_product
  	puts "product information :"
  	puts "id \t name \t stock \t company name "
  	File.open(@@filename, "r").each_line do |line|
  	  temp_array = line.split("*")
  	  puts "#{temp_array[0]}\t#{temp_array[1]}\t#{temp_array[2]}\t #{temp_array[3]}"
  	end
  end


  # search_product method will search in inventory file by product name
  def search_product
    puts "enter name of product you want to search"
    p_name = gets.chomp
    puts "id \t name \t stock \t company name "
    File.open(@@filename ,"r") do |file|
      file.each_line do |line|
      	  temp_array = line.split("*")
    	  unless temp_array[1] == p_name

    	  else
    	  	puts "#{temp_array[0]}\t#{temp_array[1]}\t#{temp_array[2]}\t #{temp_array[3]}"

    	  end
      end
    end
  end
=end

  # edit_product method will  edit product details which were entered by shopkeeper
  def edit_product
  	puts "edit_product"
  	puts "enter product id"
  	id = gets.chomp
  	puts id
  	File.open(@@filename, "r") do |file|
  	  File.open(@@filename, "a") do |f|
  	  file.each_line do |line|
  	    temp_array = line.split("*")
  	    if temp_array[0] == id
  	    	f.write(temp_array[0])
  	    end

  	    end
  	  end
  	end
  end
end