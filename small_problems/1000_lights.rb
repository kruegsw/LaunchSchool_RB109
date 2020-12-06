def one_thousand_light(n)
	lights_on = []
	switch_array = (1..n).to_a
	p switch_record = switch_array.map { |switch_number|
		switch_array.map { |pass_number| switch_number % pass_number  == 0 } }
	switch_toggles = switch_record.map { |switch| switch.select { |x| x == true}.size }
	switch_toggles.each_with_index { |toggles, i| lights_on << i+1 if toggles.odd? }
	lights_on
end

def one_thousand_light(n)
	lights_on = []

	(1..n).each do |switch|
		toggles = 0

		(1..n).each do |pass|
			toggles += 1 if switch % pass == 0
		end

		lights_on << switch if toggles.odd?
	end
	lights_on
end

p one_thousand_light(1000)