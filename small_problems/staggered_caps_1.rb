def staggered_case(string)
	string.chars.each_with_index.map { |e, i| i.even? ? e.upcase : e.downcase }.join
end

puts staggered_case('I Love Launch School!')
puts staggered_case('ALL_CAPS')
puts staggered_case('ignore 77 the 444 numbers')