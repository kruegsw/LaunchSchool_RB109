def swap(str)
	str.split.map { |x|
		temp_first = x[0]
		temp_last = x[-1]
		x[0] = temp_last
		x[-1] = temp_first
		x
	}.join(' ')
end

def swap_first_last_characters(a, b)
  a, b = b, a
end

def swap_first_last_characters_2(word)
  word[0], word[-1] = word[-1], word[0]
end

puts swap('Oh what a wonderful day it is')
puts swap('Abcde')
puts swap('a')

word = 'tester'
swap_first_last_characters(word[0], word[-1])
puts word

word = 'tester'
swap_first_last_characters_2(word)
puts word