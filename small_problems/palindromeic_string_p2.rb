#def real_palindrome?(str)
#	alphanumeric_array = ('a'..'z').to_a + ('A'..'Z').to_a + (0..9).to_a
#	str = str.chars.select { |x| alphanumeric_array.include?(x) }.join
#	str.downcase == str.reverse.downcase
#end

def real_palindrome?(str)
	str = str.downcase.delete('^a-z0-9')
	str == str.reverse
end

puts real_palindrome?('madam')
puts real_palindrome?('Madam')
puts real_palindrome?("Madam, I'm Adam")
puts real_palindrome?('356653')
puts real_palindrome?('356a653')
puts real_palindrome?('123ab321')