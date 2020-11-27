puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

sq_m = length * width
sq_ft = sq_m * 10.7639

puts "The area of the room is #{sq_m.round(2)} square meters (#{sq_ft.round(2)} square feet)."