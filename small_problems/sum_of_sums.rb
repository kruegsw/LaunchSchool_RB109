def sum_of_sums(arr)
	arr.each_with_index.map { |x, i| arr[0..i].inject(&:+) }.inject(&:+)
end

p sum_of_sums([3, 5, 2])
p sum_of_sums([1, 5, 7, 3])
p sum_of_sums([4])
p sum_of_sums([1, 2, 3, 4, 5])