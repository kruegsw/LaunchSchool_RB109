print "What is your age? "
current_age = gets.chomp.to_i

print "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

current_year = Time.now.year
retirement_year = current_year + (retirement_age - current_age)

puts "It's #{current_year}.  You will retire in #{retirement_year}."
puts "You have only #{retirement_year - current_year} years of work to go!"