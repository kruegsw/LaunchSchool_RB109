def swapcase(str)
	str.chars.map { |char| char.match(/[a-z]/) ? char.upcase : char.downcase }.join
end


puts swapcase('CamelCase')
puts swapcase('Tonight on XYZ-TV')