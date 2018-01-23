require 'ruby_intro.rb'

def sum (array)
  array.reduce 0, :+
end

def max_2_sum(array)
	return 0 if array.empty?
	return array[0] if array.length == 1
	ar = array.sort
	ar[-1] + ar[-2]
end

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