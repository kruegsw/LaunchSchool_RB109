def multisum(num)
	sum = 0
	(1..num).each { |num| sum += num if num % 3 == 0 || num % 5 == 0 }
	sum
end
puts multisum(3)
puts multisum(5)
puts multisum(10)
puts multisum(1000)

