def center_of(str)
	case str.size.even?
	when true
		str.slice(str.size / 2 - 1, 2)
	when false
		str[str.size / 2]
	end
end

p center_of('I love ruby')
p center_of('Launch School')
p center_of('Launch')
p center_of('Launchschool')
p center_of('x')