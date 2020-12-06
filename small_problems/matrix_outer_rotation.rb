def rotate90(orig_matrix)
	matrix = orig_matrix.clone
	-2.downto(-matrix.size) { |i| matrix[i+1].push(matrix[i].pop)}
	1.upto(matrix.size-1) { |i| matrix[i-1].unshift(matrix[i].shift)}
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

p new_matrix1 = rotate90(matrix1)
p new_matrix2 = rotate90(matrix2)
p new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))