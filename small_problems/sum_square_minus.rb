def sum_square_difference(num)
	(1..num).inject(&:+)**2 - (1..num).inject { |sum, x| sum + x**2}
end

def sum_square_difference(num)
	(1..num).sum**2 - (1..num).map { |x| x**2}.sum
end

p sum_square_difference(3)
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10)
p sum_square_difference(1)
p sum_square_difference(100)