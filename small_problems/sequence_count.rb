def sequence(repetitions, int)
	arr = []
	int_for_addition = int
	while repetitions > 0
		arr << int_for_addition
		int_for_addition += int
		repetitions -= 1
	end
	arr
end

p sequence(5, 1)
p sequence(4, -7)
p sequence(3, 0)
p sequence(0, 1000000)