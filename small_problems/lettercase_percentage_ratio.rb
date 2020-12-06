def letter_percentages(str)
	letter_count = str.size
	letter_hash = {}
	letter_hash[:lowercase] = format('%.02f', str.scan(/[a-z]/).size / letter_count.to_f * 100)
	letter_hash[:uppercase] = format('%.02f', str.scan(/[A-Z]/).size / letter_count.to_f * 100)
	letter_hash[:neither] = format('%.02f', str.scan(/[^a-zA-Z]/).size / letter_count.to_f * 100)
	letter_hash
end

p letter_percentages('abCdef 123')
p letter_percentages('AbCd +Ef')
p letter_percentages('123')
p letter_percentages('abcdefGHI')