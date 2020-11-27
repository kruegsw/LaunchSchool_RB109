def multiply_list(arr_1, arr_2)
	arr_1.zip(arr_2).map { |x| x.inject(&:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11])