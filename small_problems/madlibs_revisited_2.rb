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
#The #{adjective} brown #{noun} #{adverb}
##{verb} the #{adjective} yellow
##{noun}, who #{adverb} #{verb} his
##{noun} and looks around.

MADLIB_HASH= madlib_fields_file.gsub(/\s+/,' ').split
										.map { |madlib_string| madlib_string.split('=') }
										.map { |madlib,options| [madlib, options.split(',')] }
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

def madlib_attempt(file)
	new_text_file = file.clone
	MADLIB_HASH.each { |k,v| new_text_file.gsub!(k.to_s, v.sample) }
	puts new_text_file
end

#madlib_attempt(madlib_text_file_2) # work

madlib_text_file_3.clone.each_line { |line| puts line }


puts "The #{adjective} brown #{noun} #{adverb}"
puts "#{verb} the #{adjective} yellow"
puts "#{noun}, who #{adverb} #{verb} his"
puts "#{noun} and looks around."