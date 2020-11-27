def running_total(array)
	running_total = 0
	array.map do |x|
		running_total += x
		running_total
	end
end

def running_total_2(array)
	new_array = []
	running_total = 0
	array.each do |x|
		running_total += x
		new_array << running_total
	end
	new_array
end

def running_total_3(array)
	running_total = 0
	array.each_with_object([]) do |x, new_array|
		running_total += x
		new_array << running_total
	end
end

def running_total_4(array)
	array.each_with_index.map { |x, i| array[0..i].inject(:+) }
end


p running_total_4([2, 5, 13])
p running_total_4([14, 11, 7, 15, 20])
p running_total_4([3])
p running_total_4([])