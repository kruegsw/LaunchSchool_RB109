puts ">> Please enter an integer greater than 0."
int = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to computer the product"
prod_or_sum = gets.chomp

#(1..int).inject do |result, x|
#	if prod_or_sum == 's' then result + x else result * x end
#end

puts (1..int).reduce(:+) if prod_or_sum == 's'
puts (1..int).reduce(1, :+) if prod_or_sum == 's'
puts (1..int).reduce(5, :+) if prod_or_sum == 's'
puts (1..int).reduce(:*) if prod_or_sum == 'p'
puts (1..int).reduce(1, :*) if prod_or_sum == 'p'
puts (1..int).reduce(5, :*) if prod_or_sum == 'p'