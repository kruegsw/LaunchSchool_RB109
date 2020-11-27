def multiply_all_pairs(arr_1, arr_2)
	new_arr = []
	arr_1.each do |x|
		arr_2.each { |y| new_arr << x*y }
	end
	new_arr.sort
end

def multiply_all_pairs_2(arr_1, arr_2)
	arr_1.product(arr_2).map{ |x| x.inject(&:*) }.flatten.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])
p multiply_all_pairs_2([2, 4], [4, 3, 1, 2])