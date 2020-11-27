def reversed_array(array)
	temp_array = []
	array.each_with_index { |x, i| temp_array << array[-i-1]}
	temp_array
end

def reversed_array_2(array)
	array.each_with_object([]) { |x,obj| obj.unshift(x) }
end

def reversed_array_3(array)
	array.inject([]) { |obj, x| obj.unshift(x) }
end

p list = %w(a b e d c)
p list.object_id
p new_array =  reversed_array_3(list)
p new_array.object_id
p list
p list.object_id