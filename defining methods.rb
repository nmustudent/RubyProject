puts "1.create method n pass argument"

def greet(name)
  puts "Hello #{name}"
end
puts greet('Renu')

puts "2.Array shuffling"
def greet(name)
  greeting=["hello","Hi"].shuffle
  "#{greeting.first} #{name}"
end
puts greet ('renu')

puts "3.convertion from miles to kilometer"
def convert(mile)
  puts "miles=#{mile*1.609}"
end
convert(25)

puts "4.Find out leap year"
def leap_year(yr)
  if yr%4==0
    return true
  else
    return false
  end
end
puts leap_year(2012)
puts leap_year(2015)
puts "OR"
r=leap_year(2001)
if (r==1)
  puts "this is leap year"
else  puts "It is not leap year"
end
