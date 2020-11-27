NUMBERS = {
					'0' => 0,
					'1' => 1,
					'2' => 2,
					'3' => 3,
					'4' => 4,
					'5' => 5,
					'6' => 6,
					'7' => 7,
					'8' => 8,
					'9' => 9,
					'a' => 10,
					'b' => 11,
					'c' => 12,
					'd' => 13,
					'e' => 14,
					'f' => 15
					}

def string_to_integer(str)
	str.chars.reverse.each_with_index.map { |x, i| NUMBERS[x] * 10**i }.inject(:+)
end

def negative?(str)
	str[0] == '-'
end

def positive?(str)
	str[0] == '+'
end

def sign(str)
	if str[0] == '-' then -1 else 1 end
end

def string_to_signed_integer(str)
	if negative?(str) || positive?(str)
		string_to_integer(str[1..]) * sign(str)
	else
			string_to_integer(str)
	end
end


puts string_to_signed_integer('4321')
puts string_to_signed_integer('-570')
puts string_to_signed_integer('+100')