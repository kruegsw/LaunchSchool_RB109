def buy_fruit(arr)
	arr.map { |x| [x[0]]*x[1] }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])