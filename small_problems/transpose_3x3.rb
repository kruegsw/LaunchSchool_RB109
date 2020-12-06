def transpose(matrix)
	t_matrix = matrix.clone
	t_matrix.size.times do |row|
		(row..t_matrix.size-1).each do |column|
			t_matrix[row][column], t_matrix[column][row] = t_matrix[column][row], t_matrix[row][column]
		end
	end
	t_matrix
end

def transpose!(matrix)
	matrix.size.times do |r|
		(r..matrix.size-1).each do |c|
			matrix[r][c], matrix[c][r] = matrix[c][r], matrix[r][c]
		end
	end
end

def transpose_2(matrix) # superior methods from colleague
  matrix.map.with_index { |row, r| row.map.with_index { |col, c| matrix[c][r] } }
end

def transpose_2!(matrix) # which doesnt work as well for mutation
  t_matrix = matrix.map.with_index { |row, r| row.map.with_index { |col, c| matrix[c][r] } }
  #matrix[0..-1][0..-1] = t_matrix[0..-1][0..-1]
end

def transpose_3!(arr)
  0.upto 2  do |x|
    0.upto 2 do |y|
      arr[x][y], arr[y][x] = arr[y][x], arr[x][y]
    end
  end
  arr
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

p matrix
puts matrix.object_id
transpose!(matrix)
p matrix
puts matrix.object_id