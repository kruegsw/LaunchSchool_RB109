def get_grades(grade_1, grade_2, grade_3)
	average = ( grade_1 + grade_2 + grade_3 ) / 3
	case average / 10
	when 9
		'A'
	when 8
		'B'
	when 7
		'C'
	when 6
		'D'
	else
		'F'
	end
end

p get_grades(95, 90, 93)
p get_grades(50, 50, 95)