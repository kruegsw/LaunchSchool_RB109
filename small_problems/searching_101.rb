def solicit_five_numbers
	array = []
	5.times do
		puts "Enter a number."
		array << gets.chomp.to_i
	end
	array
end

def solicit_search_number
	puts "Enter the last number."
	search_num = gets.chomp.to_i
end

def number_in_array?(array, number)
	array.include?(number)
end

array_of_numbers = solicit_five_numbers
search_number = solicit_search_number

if number_in_array?(array_of_numbers, search_number)
	puts("The number #{search_number} appears in #{array_of_numbers}.")
else
	puts("The number #{search_number} does not appear in #{array_of_numbers}.")
end