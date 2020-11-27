NUMBERS = {
					0 => '0',
					1 => '1',
					2 => '2',
					3 => '3',
					4 => '4',
					5 => '5',
					6 => '6',
					7 => '7',
					8 => '8',
					9 => '9'
					}

def integer_to_string(int)
	#nt_array = []
	result = ''
	loop do
		int, rem = int.divmod(10)
		#int_array << rem
		result = result.prepend(NUMBERS[rem])
		#int_array << int - int/10 * 10
		#int /= 10
		break if int < 1
	end
	#int_array.empty? ? '0' : int_array.reverse.map { |x| NUMBERS[x] }.join
	result
end

puts integer_to_string(4321)
puts integer_to_string(0)
puts integer_to_string(5000)

def integer_to_string_ex(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(NUMBERS[remainder])
    break if number == 0
  end
  result
end

puts integer_to_string_ex(4321)
puts integer_to_string_ex(0)
puts integer_to_string_ex(5000)