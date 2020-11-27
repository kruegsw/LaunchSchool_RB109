def time_of_day(int)
	hours , minutes = int.divmod(60)
	hours = (hours % 24).to_s
	minutes = minutes.to_s
	hours = hours.prepend('0') if hours.size == 1
	minutes = minutes.prepend('0') if minutes.size == 1
	hours << ':' << minutes
end

puts time_of_day(0)
puts time_of_day(-3)
puts time_of_day(35)
puts time_of_day(-1437)
puts time_of_day(3000)
puts time_of_day(800)
puts time_of_day(-4231)