def include?(array, search)
	array.inject(false) { |obj, x| (x == search) || obj }
end

def include?(array, search)
	!!array.find_index(search)
end

p include?([1,2,3,4,5], 3)
p include?([1,2,3,4,5], 6)
p include?([], 3)
p include?([nil], nil)
p include?([], nil)