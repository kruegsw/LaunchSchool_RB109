# categorize triangle by number of different sides
TRIANGLES = {
	1 => :equilateral ,
	2 => :isosceles,
	3 => :scalene
}

def valid_triangle?(x, y, z)
	[x,y,z].sum == 180 && ![x,y,z].include?(0)
end

def triangle(x, y, z)
	return :invalid if !valid_triangle?(x, y, z)
	if [x, y, z].max == 90
		:right
	elsif [x, y, z].max > 90
		:obtuse
	else
		:acute
	end
end

def triangle(x, y, z)
	case
	when [x, y, z].include?(0) or [x, y, z].sum != 180
		:invalid
	when [x, y, z].include?(90)
		:right
	when [x, y, z].max > 90
		:obtuse
	else
		:acute
	end
end

p triangle(60, 70, 50)
p triangle(30, 90, 60)
p triangle(120, 50, 10) 
p triangle(0, 90, 90)
p triangle(50, 50, 50)