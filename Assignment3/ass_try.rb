#!/usr/bin/ruby
def method
 File.open("test.txt", "r") do |f|
   n,h = 0,{}
   f.each_line do |line|
     n += 1
     line =~ /(\d) (.*) at (\d*\.\d*)/
     h[n.to_s] = { :quantity => $1.to_i, :item => $2, :price => $3 }
     puts h
   end
 end
end
def some
  def self.
    def self.
      ds
      ds

    end

  end