def repeater(str)
	str.chars.map { |x| x*2 }.join
end

p repeater('Hello')
p repeater("Good job!")
p repeater('')