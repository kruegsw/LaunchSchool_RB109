def leading_substrings(string)
	string.chars.each_with_index.map { |x, i| string[0..i] } 
end


p leading_substrings('abc')
p leading_substrings('a')
p leading_substrings('xyzzy')