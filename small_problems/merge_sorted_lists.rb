def merge(arr1,arr2)
	a1 = arr1.clone
	a2 = arr2.clone
	new_arr = []
	until a1.empty? and a2.empty?
		if a2.empty?
			new_arr << a1.shift
		elsif a1.empty?
			new_arr << a2.shift
		elsif a1.first < a2.first
			new_arr << a1.shift
		else
			new_arr << a2.shift
		end
	end
	new_arr
end

def merge(arr1, arr2)
	new_arr = []
	i1 = 0
	i2 = 0
		
	until new_arr.size >= arr1.size + arr2.size
		if !arr1[i1]
			new_arr << arr2[i2]
			i2 += 1
		elsif !arr2[i2]
			new_arr << arr1[i1]
			i1 += 1
		elsif arr1[i1] < arr2[i2]
			new_arr << arr1[i1]
			i1 += 1
		else
			new_arr << arr2[i2]
			i2 += 1
		end
				
	end
	new_arr
end

def merge(a1, a2)
	new_arr = []

	i = 0
	j = 0
	until !a1[j] and !a2[i] do

		if !a2[i] then new_arr << a1[j]; j+=1; next end
		if !a1[j] then new_arr << a2[i]; i+=1; next end
		if a2[i] <= a1[j] then new_arr << a2[i]; i+=1; next end
		if a1[j] <= a2[i] then new_arr << a1[j]; j+=1; next end

	end
	new_arr
end

p merge([1, 5, 9], [2, 6, 8])
#p merge([1, 1, 3], [2, 2])
#p merge([], [1, 4, 5])
#p merge([1, 4, 5], [])