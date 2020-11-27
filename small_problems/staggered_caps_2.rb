def staggered_case(string)
	i = 1
	string.chars.map { |e| i += 1 if e.match(/[a-zA-Z]/) ; i.even? ? e.upcase : e.downcase }.join
end

puts staggered_case('I Love Launch School!')
puts staggered_case('ALL_CAPS')
puts staggered_case('ignore 77 the 444 numbers')