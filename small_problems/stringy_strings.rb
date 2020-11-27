def stringy(integer)
	string = ''
	integer.times { |x| if x.even? then string << '1' else string << '0' end}
		string
end

def stringy_again(integer)
	string = ''
	integer.times { |x| x.even? ? string << '1' : string << '0' }
	string
end

def stringy_further(integer, first_character = 1)
	first = '1'
	second = '0'
	if first_character == 0 then first = 0.to_s ; second = 1.to_s end
	string = ''
	integer.times { |x| x.even? ? string << first : string << second }
	string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts
puts stringy_again(6) == '101010'
puts stringy_again(9) == '101010101'
puts stringy_again(4) == '1010'
puts stringy_again(7) == '1010101'
puts
puts stringy_further(6, 1)
puts stringy_further(6)
puts stringy_further(6, 0)
