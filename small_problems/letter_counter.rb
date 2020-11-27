def word_sizes_1(str)
	unique_array = str.split.uniq.map { |word| [word, 0] }
	unique_array.map { |arr| arr[1] = str.split.count(arr[0]) }
		unique_array.to_h
end

def word_sizes_2(str)
	word_size_array = str.split.map(&:size)
	word_size_array.uniq.map { |num| [num, 1] }.map { |arr| [arr[0], word_size_array.count(arr[0])] }.to_h
end

def word_sizes_3(str)
	size_hash = Hash.new(0)
	str.split.each { |word| size_hash[word.size] += 1 }
	size_hash
end

puts word_sizes_3('Four score and seven.')
puts word_sizes_3('Hey diddle diddle, the cat and the fiddle!')
puts word_sizes_3("What's up doc?")
puts word_sizes_3('')
