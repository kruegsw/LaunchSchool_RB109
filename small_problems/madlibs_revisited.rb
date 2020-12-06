file = File.read('madlibs_file.txt')
#noun=fox,dogs,head,leg
#verb=jumps,lift,bites,licks
#adjective=quick,lazy,sleepy,ugly
#adverb=easil,noisily,excitedly,lazily

MADLIB_HASH= file.gsub(/\s+/,' ').split
										.map { |madlib_string| madlib_string.split('=') }
										.map { |madlib,options| [madlib,options.split(',')] }
										.to_h

def adjective
	MADLIB_HASH['adjective'].sample
end

def noun
	MADLIB_HASH['noun'].sample
end

def adverb
	MADLIB_HASH['adverb'].sample
end

def verb
	MADLIB_HASH['verb'].sample
end

puts "The #{adjective} brown #{noun} #{adverb}"
puts "#{verb} the #{adjective} yellow"
puts "#{noun}, who #{adverb} #{verb} his"
puts "#{noun} and looks around."