def print_in_box(string)
	#dashes = ''
	#string.size.times do dashes << '-' end 
	puts line_1 = "+-#{'-' * string.size}-+"
	puts line_2 = "+-#{string}-+"
	puts line_3 = "+-#{'-' * string.size}-+"
end

print_in_box('To boldly go where no one has gone before.')