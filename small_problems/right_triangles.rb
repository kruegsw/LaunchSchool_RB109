def triangles(positive_integer)
	(1..positive_integer).each { |i| puts "#{' '*(positive_integer-i)+'*'*i}" }
end

triangles(20)