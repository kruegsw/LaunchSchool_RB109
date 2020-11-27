def century(year)
	century = (year - 1) / 100 + 1
	
	suffix = ''
	
	century_clone = century.clone

	loop do
		break if century_clone < 101
		century_clone -= 100

	end

	suffix = case century_clone
	when 1, 21, 31, 41, 51, 61, 71, 81, 91
		'st'
	when 2, 22, 32, 42, 52, 62, 72, 82, 92
		'nd'
	when 3, 23, 33, 43, 53, 63, 73, 83, 93
		'rd'
	else
		'th'
	end


	century.to_s + suffix

end

puts century(2000)
puts century(2001)
puts century(1965)
puts century(256)
puts century(5)
puts century(10103)
puts century(1052)
puts century(1127)
puts century(11201)