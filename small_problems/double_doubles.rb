def twice(int)
	arr = int.to_s.chars.map(&:to_i)
	if arr.size.even?
		if arr[0..arr.size/2-1] == arr[arr.size/2..-1]
			int
		else
			int*2
		end
	else
		if [arr.size/2..-1] == arr[arr.size/2+1..-1]
			int
		else
			int*2
		end
	end
end

p twice(37)
p twice(44) 
p twice(334433)
p twice(444)
p twice(107)
p twice(103103)
p twice(3333)
p twice(7676)
p twice(123_456_789_123_456_789)
p twice(5)