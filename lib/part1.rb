require 'ruby_intro.rb'

#################################################################################
#Define a method sum(array) that takes an array of integers as an argument and 
#returns the sum of its elements. For an empty array it should return zero
#################################################################################
def sum (array)
  array.reduce 0, :+
end

#################################################################################
#Define a method max_2_sum(array) which takes an array of integers as an argument 
#and returns the sum of its two largest elements. For an empty array it should 
#return zero. For an array with just one element, it should return that element.
#################################################################################
def max_2_sum(array)
	return 0 if array.empty?
	return array[0] if array.length == 1
	ar = array.sort
	ar[-1] + ar[-2]
end

#################################################################################
#Define a method sum_to_n?(array, n) that takes an array of integers and an 
#additional integer, n, as arguments and returns true if any two elements in the 
#array of integers sum to n. sum_to_n?([], n) should return false for any value 
#of n, by definition.
#################################################################################
def sum_to_n?(array, n)
	return false if array.empty? or array.length == 1

	h = Hash.new
	array.each{|x| 
		if h.key? x
			return true
		else
			h[n - x] = n	
		end
	}
	return false
end
