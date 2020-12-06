def rotate_array(arr)
	arr.object_id
	new_arr = arr.clone
	new_arr << new_arr.shift
	new_arr.object_id
	new_arr
end

rotate_array([7, 3, 5, 2, 9, 1])
rotate_array(['a', 'b', 'c'])
rotate_array(['a'])

def rotate_string(str)
	str[1..-1] + str[0]
end


p rotate_string('start')


def rotate_int(int)
	( int.to_s[1..-1] + int.to_s[0] ).to_i
end

p rotate_int(95)