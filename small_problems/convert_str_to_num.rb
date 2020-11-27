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
	sum = 0
	str.chars.reverse.each_with_index { |x, i| sum += NUMBERS[x] * 10**i }
	sum
end

def string_to_integer_2(str)
	str.chars.reverse.each_with_index.map { |x, i| NUMBERS[x] * 10**i }.inject(:+)
end

puts string_to_integer_2('4321')
puts string_to_integer_2('570')


def hexadecimal_to_integer(str)
	str.downcase.chars.reverse.each_with_index.map { |x, i| NUMBERS[x] * 16**i }.inject(:+)
end

puts hexadecimal_to_integer('4D9f')