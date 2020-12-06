

def transpose(matrix)
	t_matrix = Array.new(matrix[0].size).map { |x| Array.new(matrix.size) }
	t_matrix.each_with_index { |row, r| row.each_with_index { |col, c| t_matrix[r][c] = matrix[c][r]} }
	t_matrix
end

p transpose([[1, 2, 3, 4]])# == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]])# == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]])# == [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]])# == [[1]]