DEGREE = "\xC2\xB0"

def dms(angle_float)
	degrees = angle_float % 360
	minutes_float = (degrees.to_i - degrees) * 60
	degrees = degrees.to_i
	minutes = minutes_float.to_i
	seconds = (minutes_float - minutes) * 60
	seconds = seconds.to_i
	angle_string = format(%(%03d#{DEGREE}%02d'%02d"), degrees, minutes, seconds)
end

puts dms(30)
puts dms(76.73)
puts dms(254.6)
puts dms(93.034773)
puts dms(0)
puts dms(360)
puts dms(-420)