print "Please write word or mulitple words: "
input = gets.chomp

puts "There are #{input.split.join.size} characters in \"#{input}\""