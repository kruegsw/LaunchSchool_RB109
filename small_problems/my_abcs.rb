string = 'B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M'

#generate hash of implied relationships by string above rather than typing it out
BLOCKS = string.gsub(/\s+/,' ').split.map { |x| [x[0],x[2]]}.to_h.freeze

def block_word?(word)
	word = word.upcase
	BLOCKS.each { |k, v| return false if word.include?(k) && word.include?(v) }
	true
end

p block_word?('BATCH')
p block_word?('BUTCH')
p block_word?('jest')

