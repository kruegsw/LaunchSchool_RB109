def cleanup(str)
	alphabet = ('a'..'z')
	str.chars.map { |x| if alphabet.include?(x) then x else ' ' end }.join.squeeze
end

p cleanup("---what's my +*& line?")