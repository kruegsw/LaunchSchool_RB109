madlib_fields_file = File.read('madlibs_file.txt')
#noun=fox,dogs,head,leg
#verb=jumps,lift,bites,licks
#adjective=quick,lazy,sleepy,ugly
#adverb=easil,noisily,excitedly,lazily

madlib_text_file_1 = File.read('madlibs_file_2.txt')
#The %{adjective} brown %{noun} %{adverb}
#%{verb} the %{adjective} yellow
#%{noun}, who %{adverb} %{verb} his
#%{noun} and looks around.

madlib_text_file_2 = File.read('madlibs_file_3.txt')
#The adjective brown noun adverb
#verb the adjective yellow
#noun, who adverb verb his
#noun and looks around.

madlib_text_file_3 = File.read('madlibs_file_4.txt')
#The #{:adjective} brown #{:noun} #{:adverb}
##{:verb} the #{:adjective} yellow
##{:noun}, who #{adverb} #{verb} his
##{:noun} and looks around.

TEST_HASH = {adjective: "chicken"}

MADLIB_HASH= madlib_fields_file.gsub(/\s+/,' ').split
										.map { |madlib_string| madlib_string.split('=') }
										.map { |madlib,options| [madlib, options.split(',')] }
										.to_h

MADLIB_HASH_2= madlib_fields_file.gsub(/\s+/,' ').split
										.map { |madlib_string| madlib_string.split('=') }
										.map { |madlib,options| [madlib.intern, options.split(',')] }
										.to_h

def this_works(file)
	file.each_line do |line|
		puts format(line, noun: 			MADLIB_HASH['noun'].sample, 
											verb: 			MADLIB_HASH['verb'].sample, 
											adjective: 	MADLIB_HASH['adjective'].sample,
											adverb: 		MADLIB_HASH['adverb'].sample
								)
	end
end

#this_works(madlib_text_file_1)

#madlib_string = madlib_text_file_1.clone.delete('%{}')
#MADLIB_HASH.each do |k, v|
#	madlib_string = madlib_string.split.map { |word|
#		MADLIB_HASH[word] or word }.join(' ')
#end
#puts madlib_string


p madlib_text_file_1
		.clone.delete('%{}')
		.split.map 	{ |word|
								MADLIB_HASH.has_key?(word) ? MADLIB_HASH[word].sample : word
								}
		.join(' ')