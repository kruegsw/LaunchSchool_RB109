def fibonacci_first_try(index, last = 1, second_to_last = 0)
	return last if index == 1
	last, second_to_last =  last + second_to_last, last
	index -= 1
	fibonacci(index, last, second_to_last)
end

def fibonacci(n, last = 1, second_to_last = 0)
	n == 1 ? last : fibonacci(n - 1, last + second_to_last, last)
end

def fibonacci_slow(num)
  num < 2 ? num : fibonacci(num - 1) + fibonacci(num - 2)
end

def fibonacci_old(n)
	last = 1
	second_to_last = 0
	(n-1).times do
		last, second_to_last =  last + second_to_last, last
	end
	"#{last} -->  #{last.to_s[-1]} (the #{n} fibonacci number is a #{last.to_s.size} digit number"
end

def fibonacci_last(n)
	last = fibonacci_old(n)
	"#{last} -->  #{last.to_s[-1]} (the #{n} fibonacci number is a #{last.to_s.size} digit number"
end

p fibonacci_last(123_456_789_987_745)