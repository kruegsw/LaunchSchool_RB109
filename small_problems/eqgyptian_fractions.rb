require 'pry'

def egyptian(rat)
	denominators = []
	i = 0
	total = 0
	while total < rat
		i += 1
		next if total + Rational(1,i) > rat
		denominators << i
		total = unegyptian(denominators)
		#binding.pry
	end
	denominators
end

def unegyptian(arr)
	arr.reduce { |sum, d| sum + Rational(1,d) }
end

p egyptian(Rational(137, 60))
p unegyptian([1, 2, 3, 4, 5])