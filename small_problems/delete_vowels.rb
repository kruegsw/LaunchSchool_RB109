def remove_vowels(array)
	array.map { |word| word.gsub(/[aeiou]/i, '') }
end

def remove_vowels_2(array)
	array.map { |word| word.chars.reject { |letter| letter.match(/[aeiou]/i) }.join('') }
end

def remove_vowels_3(array)
	array.map { |word| word.delete('aeiouAEIOU') }
end

p remove_vowels_3(%w(abcdefghijklmnopqrstuvwxyz))
p remove_vowels_3(%w(green YELLOW black white))
p remove_vowels_3(%w(ABC AEIOU XYZ))