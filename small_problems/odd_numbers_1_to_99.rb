#(1..99).select { |x| x.odd? }
#(1..99).each { |x| puts x if x.odd? }
#100.times { |x| puts x if x.odd?}
1.upto(99) { |x| puts x if x.odd?}