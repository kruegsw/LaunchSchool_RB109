
def reverse_words(sentence)
	sentence.split.map { |word| if word.size > 4 then word.reverse else word end}.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

