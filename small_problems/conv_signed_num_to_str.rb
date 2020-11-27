NUMBERS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def string_to_integer(str)
	str.chars.reverse.each_with_index.map { |x, i| NUMBERS[x] * 10**i }.inject(:+)
end

def integer_to_string(int)
	str = ''
	int = int.abs
	while int > 0
		int , rem = int.divmod(10)
		str.prepend(NUMBERS[rem])
	end
	str
end

def signed_integer_to_string(num)
	case num <=> 0
	when -1
		'-' + integer_to_string(num)
	when 1
		'+' + integer_to_string(num)
	else
		NUMBERS[num]
	end
end

puts signed_integer_to_string(4321)
puts signed_integer_to_string(-123)
puts signed_integer_to_string(0)