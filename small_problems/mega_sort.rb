def split_array(arr)
	first_half = arr[..arr.size/2-1]
	second_half = arr[arr.size/2..]
	[
		if first_half.size == 1 then [first_half[0]] else split_array(first_half) end,
		if second_half.size == 1 then [second_half[0]] else split_array(second_half) end
	]
end

def merge(a1, a2)
	
	arr = a1 + a2	
	arr.map { |x| arr.inject { |sum, y| sum + (x <=> y) } }.each_with_index.map { |x| arr[] }

end

def merge2(a1, a2)
	new_arr = []

	i1 = 0
	i2 = 0
	until !a1[i1] and !a2[i2] do

		p case a1[i1] <=> a2[i2]
		when nil
			if !a2[i2] then new_arr << a1[i1]; i1+=1; next end
			if !a1[i1] then new_arr << a2[i2]; i2+=1; next end
		when -1, 0
			new_arr << a1[i1]
			i1+=1
		when 1
			new_arr << a2[i2]
			i2+=1
		end
		break if i1 > 5 or i2 > 5
	end
	return new_arr if !new_arr.first[0] and new_arr.size == new_arr.flatten.size
	merge(new_arr[0], new_arr[1])
end

def merge_sort(arr)
	p arr = split_array(arr)
	p arr[0]
	p arr[1]
	merge(arr[0], arr[1])
end

p merge([1, 5, 9], [2, 6, 8])
p merge([], [1, 4, 5])
#p merge_sort([9, 5, 7, 1])
#p merge_sort([5, 3])
#p merge_sort([6, 2, 7, 1, 4])
#p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie))
#p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46])