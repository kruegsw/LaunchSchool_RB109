def oddities(array)
	new_array = []
	array.each_with_index { |x, index| new_array << x if (index+1).odd? }
	new_array
end


puts oddities([2, 3, 4, 5, 6])
puts oddities([1, 2, 3, 4, 5, 6])
puts oddities(['abc', 'def'])
puts oddities([123])
puts oddities([])