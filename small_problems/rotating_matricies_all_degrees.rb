def rotate90(orig_matrix) # same as tranpose(matrox) then reverse! each row
	matrix = Array.new(orig_matrix[0].size).map { |x| Array.new(orig_matrix.size) }

	matrix.each_with_index do |row, r|
		row.each_with_index { |col, c| matrix[r][-c-1] = orig_matrix[c][r]}
		#row.reverse!
	end

	matrix
end

def rotate (orig_matrix, degrees)
	num_90_rotations = degrees / 90
	matrix = orig_matrix
	
	num_90_rotations.times { matrix = rotate90(matrix) }
	matrix
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))


p matrix1
p rotate(matrix1, 90)
p rotate(matrix1, 180)
p rotate(matrix1, 270)
p rotate(matrix1, 360)
puts
p matrix2
p rotate(matrix2, 90)
p rotate(matrix2, 180)
p rotate(matrix2, 270)
p rotate(matrix2, 360)