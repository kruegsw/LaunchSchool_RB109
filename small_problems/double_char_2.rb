def double_consonants(str)
	str.chars.map { |x| if x.match(/[a-z]/i) && x.match(/[^aeiou]/i) then x*2 else x end }.join
end

p double_consonants('String')
p double_consonants("Hello-World!")
p double_consonants("July 4th")
p double_consonants('')