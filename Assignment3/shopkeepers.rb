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
  def choose_option
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
        puts "enter id of product which you want to delete"
        p_id = gets.chomp
        object.remove_product(p_id)
      when "3"
        ShopInventory.list_product
      when "4"
        puts "enter name of product you want to search"
        p_name = gets.chomp
        ShopInventory.search_product(p_name)
      when "5"
        object.edit_product
      else
        "plese select correct options"
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
  def remove_product(id)
    File.open(@@filename, 'r') do |f|
      File.open('file.txt', 'w') do |f1|
        f.each_line do |line|
          f1.write(line) unless line.start_with? "#{id}"
        end
      end
    end
    File.rename("file.txt",@@filename)
  end

  # edit_product method will  edit product details which were entered by shopkeeper
  def edit_product
    puts "enter product id"
    id = gets.chomp
    #remove_product(id)
    puts "enter name"
    p_name = gets.chomp
    puts "enter stock"
    p_stock = gets.chomp
    puts "enter c_name"
    p_cname = gets.chomp
    puts "details  : #{p_name} #{p_stock} #{p_stock} #{p_cname}"
    File.open(@@filename, 'r') do |f|
      File.open('file.txt', 'w') do |f1|
        f.each_line do |line|
          unless line.start_with? "#{id}"
            f1.write(line)
          else
            f1.write("#{id}*#{p_name}*#{p_stock}*#{p_cname}\n")
          end
        end
      end
    end
    File.rename("file.txt",@@filename)



  end
end