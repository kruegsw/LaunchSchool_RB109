def word_cap(string)
	string.split.map(&:capitalize).join(' ')
end

def word_cap_2(string)
	string.clone.split.map { |x| x[0].upcase + x[1..-1] }.join(' ')
end

puts word_cap('four score and seven')
puts word_cap('the javaScript language') 
puts word_cap('this is a "quoted" word')