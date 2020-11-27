def find_fibonacci_index_by_length(int)
	fib_array = [1, 1]
	loop do
		fib_array << fib_array[-1] + fib_array[-2]
		break if fib_array[-1] >= 10**(int-1)
	end
	fib_array.size
end

puts find_fibonacci_index_by_length(2)
puts find_fibonacci_index_by_length(3)
puts find_fibonacci_index_by_length(10)
puts find_fibonacci_index_by_length(100)
puts find_fibonacci_index_by_length(1000)
puts find_fibonacci_index_by_length(10000)