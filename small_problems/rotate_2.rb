def rotate_string(str)
	str[1..-1] + str[0]
end

def rotate_rightmost_digits(int, last_n_digits)
	str = int.to_s
	split_index = str.size - last_n_digits
	( str.slice(0, split_index) + rotate_string(str.slice(split_index,last_n_digits)) ).to_i
end

def rotate_array(arr)
	arr[1..] << arr[0]
end

def rotate_rightmost_digits(int, last_n_digits)
	all_digits = int.to_s.chars
	all_digits[-last_n_digits..] = rotate_array(all_digits[-last_n_digits..])
	all_digits.join.to_i
end

p rotate_rightmost_digits(735291, 1) 
p rotate_rightmost_digits(735291, 2)
p rotate_rightmost_digits(735291, 3)
p rotate_rightmost_digits(735291, 4)
p rotate_rightmost_digits(735291, 5)
p rotate_rightmost_digits(735291, 6)