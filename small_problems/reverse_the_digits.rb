def reversed_number(int)
	int.to_s.chars.reverse.join.to_i
end

p reversed_number(12345)
p reversed_number(12213)
p reversed_number(456)
p reversed_number(12000)
p reversed_number(12003)
p reversed_number(1)