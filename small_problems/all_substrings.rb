def substrings(str)
	new_arr = []
	temp_arr = str.chars
	while !temp_arr.empty?
		new_arr << temp_arr.each_with_index.map { |_, i| temp_arr[0..i].join }
		temp_arr.shift
	end
	new_arr.flatten
end

p substrings('abcde')