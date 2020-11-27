def crunch(str)
	string = ''
	str.chars.each_with_index { |x, i| string << x if str[i] != str[i+1] }
	string
end


def crunch_3(str)
	str.gsub(/(.)\1+/,'\1')
end

puts crunch_3('ddaaiillyy ddoouubbllee')
puts crunch_3('4444abcabccba')
puts crunch_3('ggggggggggggggg')
puts crunch_3('a')
puts crunch_3('')