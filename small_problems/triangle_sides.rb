# categorize triangle by number of different sides
TRIANGLES = {
	1 => :equilateral ,
	2 => :isosceles,
	3 => :scalene
}

def valid_triangle?(x, y, z)
	[x,y,z].sort[0..1].sum > [x,y,z].sort.last
end

def triangle(x, y, z)
	valid_triangle?(x, y, z) ? TRIANGLES[ [x, y, z].uniq.size ] : :invalid
end

p triangle(3, 3, 3)
p triangle(3, 3, 1.5)
p triangle(3, 4, 5)
p triangle(0, 3, 3)
p triangle(3, 1, 1)