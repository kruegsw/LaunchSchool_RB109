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

p fibonacci(1)
p fibonacci(2)
p fibonacci(3)
p fibonacci(4)
p fibonacci(5)
p fibonacci(12) 
p fibonacci(20)
p fibonacci(50)