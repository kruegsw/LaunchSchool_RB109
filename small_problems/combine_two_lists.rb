def interleave(arr_1, arr_2)
	new_arr = []
	arr_1.size.times { |i| new_arr << arr_1[i] << arr_2[i] }
	new_arr
end

def interleave_2(arr_1, arr_2)
	arr_1.zip(arr_2).flatten
end

p interleave_2([1, 2, 3], ['a', 'b', 'c'])