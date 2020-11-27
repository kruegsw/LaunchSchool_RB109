def average(array_of_integer)
	array_of_integer.sum / array_of_integer.size
end

def average_with_inject(array_of_integer)
	array_of_integer.inject { |sum, integer| sum += integer } / array_of_integer.size
end

def average_with_inject_2(array_of_integer)
	array_of_integer.inject(:+) / array_of_integer.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
puts
puts average_with_inject([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average_with_inject([1, 5, 87, 45, 8, 8]) == 25
puts average_with_inject([9, 47, 23, 95, 16, 52]) == 40
puts
puts average_with_inject_2([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average_with_inject_2([1, 5, 87, 45, 8, 8]) == 25
puts average_with_inject_2([9, 47, 23, 95, 16, 52]) == 40