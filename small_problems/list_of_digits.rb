def digit_list(integer)
	integer.to_s.chars.map(&:to_i)
end

p digit_list(12345)