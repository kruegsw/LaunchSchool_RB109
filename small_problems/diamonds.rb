def diamonds_per_row(n)
	diamonds_per_row = []
	(1..n).each do |row|
		if row <= ( n/2 + 1 )
			diamonds_per_row << ( 1 + (row-1)*2 )
		else
			diamonds_per_row << ( 1 + (n-row)*2 )
		end
	end
	diamonds_per_row
end

def diamond(n)
	diamonds_per_row = diamonds_per_row(n)

	n.times do |i|
		spaces = n - diamonds_per_row[i]
		row = ' '*(spaces/2) + '*'*diamonds_per_row[i] + ' '*(spaces/2)
		puts row
	end
end

def diamond_2(n)
	diamond_outline = diamonds_per_row(n)

	n.times do |i|
		if diamond_outline[i] <= 2
			puts ('*'*diamond_outline[i]).center(n)
		else
			puts ('*'+' '*(diamond_outline[i]-2)+'*').center(n)
		end
	end
end

diamond(7)
diamond_2(7)