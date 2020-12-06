
def rotate_array(arr)
	arr[1..] << arr[0]
end

def rotate_rightmost_digits(str, last_n_digits)
	all_digits = str.chars
	all_digits[-last_n_digits..] = rotate_array(all_digits[-last_n_digits..])
	all_digits.join
end

def max_rotation(int)
	s = int.to_s.size
	str = int.to_s
	s.times do |i|
		str = rotate_rightmost_digits(str, s-i)
	end
	str.to_i
end

p max_rotation(735291)
p max_rotation(3)
p max_rotation(35)
p max_rotation(105)
p max_rotation(8_703_529_146)
p max_rotation(8000146)