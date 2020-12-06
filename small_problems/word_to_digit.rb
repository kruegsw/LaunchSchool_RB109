DIGITS = {
	'one' => 1,
	'two' => 2,
	'three' => 3,
	'four' => 4,
	'five' => 5,
	'six' => 6,
	'seven' => 7,
	'eight' => 8,
	'nine' => 9
}.freeze


def word_to_digit(string)
	string.split.map { |word| DIGITS[word] ? DIGITS[word].to_s : word }.join(' ')
end


def word_to_digit(string)
	DIGITS.each { |word, digit| string.gsub!(/\b#{word}\b/, "#{DIGITS[word].to_s}") }
	string
end

def word_to_digit(string)
	string.gsub(/\b\w+\b/) { |word| DIGITS[word] or word }
end

def word_to_digit(sentence)
	DIGITS.each { |number_string, digit| sentence.gsub!(number_string,digit.to_s) }
	sentence
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')