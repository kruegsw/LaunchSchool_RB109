def halvsies(arr)
	return_arr = [[],[]]
	arr.each_with_index { |x, i| return_arr[ (i*2) / arr.size ] << x }
	return_arr
end

def halvsies_2(arr)
	[ arr.take( (arr.size/2.0).ceil ), arr[(arr.size/2.0).ceil..-1] ]
end

p halvsies_2([1, 2, 3, 4])
p halvsies_2([1, 5, 2, 4, 3])
p halvsies_2([5])
p halvsies_2([])