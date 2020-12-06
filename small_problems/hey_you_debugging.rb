def shout_out_to(name)
  name = name.chars.map { |c| c.upcase }.join

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'


def shout_out_to(name)
  name.size.times { |i| name[i] = name[i].upcase! } 

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you')