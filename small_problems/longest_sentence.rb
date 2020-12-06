file_to_be_read = 'example.txt' #'pg84.txt'

file_string = File.read(file_to_be_read).gsub(/\n/,' ')

sentence_array = file_string.scan(/[A-Z].+?[\!\.\?]/)

longest_sentence = sentence_array.sort_by { |sentence| sentence.size }.last

puts longest_sentence.split.size
p longest_sentence