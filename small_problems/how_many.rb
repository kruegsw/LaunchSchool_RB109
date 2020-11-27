def count_occurrences(vehicles)
	vehicles.uniq.each { |x| puts("#{x} => #{vehicles.count(x)}") }
end

def count_occurrences_not_case_sensitive(vehicles)
	vehicles.map!(&:downcase).uniq.each { |x| puts("#{x} => #{vehicles.count(x)}") }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

count_occurrences_not_case_sensitive(vehicles)
