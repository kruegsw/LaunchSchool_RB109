def stars(grid_size)
	mid_point = grid_size/2+1

	(1..grid_size).each do |row_number|
		distance_from_middle = (mid_point-row_number).abs
		left = right = (distance_from_middle - mid_point + 1).abs
		left_middle = right_middle = (distance_from_middle - 1).abs

		if row_number == mid_point
			puts "#{'*'*grid_size}"
		else
			puts "#{' '*left}*#{' '*left_middle}*#{' '*right_middle}*#{' '*right}"
		end

	end

end

stars(9)