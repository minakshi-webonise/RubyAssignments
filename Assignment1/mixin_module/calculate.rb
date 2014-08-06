
module Calculate 				# Module Calculate having methods for performing airthmatic operation
 
  def Calculate.percentage(m1, m2, m3)		# percentage method for calculating percentage of student
    puts "percentage #{((m1+m2+m3)*100)/300}"  
  end

  def Calculate.interest(p, n, r)		#interest method for calculating simple interest
    puts "interest #{(p*n*r)/100}"
  end
end
