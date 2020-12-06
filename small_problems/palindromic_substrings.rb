def palindrome?(substring)
	if substring.size > 1 then substring == substring.reverse end
end

def substrings(string)
	i = 0
	#string = string.gsub(/\W/,'')
	sub_string_array = []
	while i < string.size
		string[i..-1].size.times { |x| sub_string_array << string.slice(i,x+1) }
		i += 1
	end
	sub_string_array
end

def palindromes(string)
	substrings(string).select { |substring| palindrome?(substring) }
end


p palindromes('abcd')
p palindromes('madam')
p palindromes('hello-madam-did-madam-goodbye')
p palindromes('knitting cassettes')
