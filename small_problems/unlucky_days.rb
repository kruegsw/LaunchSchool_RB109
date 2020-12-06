require 'date'

# original problem
def friday_13th(year)
	counter = 0
	Date.civil(year, 1, 1).upto(Date.civil(year, 12, 31)) do |d|
		counter += 1 if d.friday? && d.day == 13
	end
	counter
end

# further exploration
def fridays_per_month(year)
	fridays = (1..12).to_a.map { |x| [x,0] }.to_h # hash to track friday count by month
	Date.civil(year, 1, 1).upto(Date.civil(year, 12, 31)) do |d|
		fridays[d.month] += 1 if d.friday?
	end
	fridays.keys.select { |fri_count| fri_count > 4 }.size
end

# I was surprised to see that every year had 8 months with 5 fridays (unless I did something wrong)
1800.upto(2020) do |year|
	p fridays_per_month(year)
end
