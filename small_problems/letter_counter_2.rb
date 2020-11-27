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
	str.split.each { |word| size_hash[word.gsub(/[^a-z]/i,'').size] += 1 }
	size_hash
end

def word_sizes_4(str)
	size_hash = Hash.new(0)
	str.split.each { |word| size_hash[word.delete('^A-Za-z').size] += 1 }
	size_hash
end


puts word_sizes_3('Four score and seven.')
puts word_sizes_3('Hey diddle diddle, the cat and the fiddle!')
puts word_sizes_3("What's up doc?")
puts word_sizes_3('')

puts word_sizes_4('Four score and seven.')
puts word_sizes_4('Hey diddle diddle, the cat and the fiddle!')
puts word_sizes_4("What's up doc?")
puts word_sizes_4('')