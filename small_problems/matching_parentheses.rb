def balanced?(string)
	balance_counter = 0
	string.chars.each do |char|
		balance_counter += 1 if char == '('
		balance_counter -= 1 if char == ')'
		return false if balance_counter < 0
	end
	balance_counter.zero?
end

p balanced?('What (is) this?')
p balanced?('What is) this?')
p balanced?('What (is this?')
p balanced?('((What) (is this))?')
p balanced?('((What)) (is this))?')
p balanced?('Hey!')
p balanced?(')Hey!(')
p balanced?('What ((is))) up(')