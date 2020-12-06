def incremental_sort(arr)
	(1..arr.size-1).each do |i|
		arr[i-1], arr[i] = arr[i], arr[i-1] if (arr[i-1] <=> arr[i]) == 1
	end
	arr
end

def bubble_sort!(arr)
	check_arr = arr.clone
	return arr if check_arr == incremental_sort(arr)
	bubble_sort!(arr)
end

p bubble_sort!([17, 5, 3, 17, 6, 9, 1, 17, 100, -3, 14, 67, 84])
p bubble_sort!(%w(Sue Pete Alice Tyler Rachel Kim Bonnie))