def reversed_array(array)
	temp_array = array.clone
	temp_array.each_with_index { |x, i| array[-i-1] = temp_array[i] }
end

list = %w(a b e d c)
p list.object_id
reversed_array(list)
p list
p list.object_id