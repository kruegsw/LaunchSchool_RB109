def ascii_value(str)
	str.each_char.map { |x| x.ord }.inject { |sum, x| sum + x }
end

def codepoint_test(str)
	str.each_codepoint.to_a
end

puts ascii_value('Four score')
puts ascii_value('Launch School')
puts ascii_value('a')
puts ascii_value('')

puts codepoint_test('Four score')