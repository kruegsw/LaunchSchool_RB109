def after_midnight(str)
	hours_to_min = str[0..1].to_i * 60
	min = str[3..4].to_i
	total_minutes = (hours_to_min + min) % (60 * 24)
	if total_minutes == 24 * 60 then 0 else total_minutes end
end

def before_midnight(str)
	hours_to_min = str[0..1].to_i * 60
	min = str[3..4].to_i
	total_minutes = (24 * 60 - hours_to_min - min) % (60 * 24)
	if total_minutes == 24 * 60 then 0 else total_minutes end
end

puts after_midnight('00:00')
puts before_midnight('00:00')
puts after_midnight('12:34')
puts before_midnight('12:34')
puts after_midnight('24:00')
puts before_midnight('24:00')

