def short_long_short(str1, str2)
	new_str = ''
	short_to_long_array = [str1, str2].sort_by(&:size)
	new_str = short_to_long_array[0] + short_to_long_array[1] + short_to_long_array[0]
end

puts short_long_short('abc', 'defgh')
puts short_long_short('abcde', 'fgh')
puts short_long_short('', 'xyz')