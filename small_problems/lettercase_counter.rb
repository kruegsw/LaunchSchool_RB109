def letter_case_count(string)
	new_hash = {'lowercase'=>0, 'uppercase'=>0, 'neither'=>0}
	string.chars.each do |x|
		if x.match(/[a-z]/)
			new_hash['lowercase'] += 1
		elsif x.match(/[A-Z]/)
			new_hash['uppercase'] += 1
		else
			new_hash['neither'] += 1
		end
	end
	new_hash
end

def letter_case_count_2(string)
	new_hash = {:lowercase => 0, :uppercase => 0, :neither => 0}
	new_hash[:lowercase] = string.chars.count { |x| x =~ /[a-z]/ }
	new_hash[:uppercase] = string.chars.count { |x| x =~ /[A-Z]/ }
	new_hash[:neither] = string.chars.count { |x| x =~ /[^a-zA-Z]/ }
	new_hash
end

def letter_case_count_3(string)
	new_hash = {:lowercase => 0, :uppercase => 0, :neither => 0}
	new_hash[:lowercase] = string.chars.count { |x| ('a'..'z').include?(x) }
	new_hash[:uppercase] = string.chars.count { |x| ('A'..'Z').include?(x) }
	new_hash[:neither] = string.size - new_hash[:lowercase] - new_hash[:uppercase]
	new_hash
end

p letter_case_count_3('abCdef 123')
p letter_case_count_3('AbCd +Ef')
p letter_case_count_3('123')
p letter_case_count_3('')