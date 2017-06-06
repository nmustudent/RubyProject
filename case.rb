$var=5
case $var
when $var > 2
  puts "#{$var} is greater than 2"
when $var < 2
puts "#{$var} is less than 2"
else

puts "#{$var} is equal to 2"
end

case
when 1
  puts "Single value"
when 2, 3
  puts "One of comma-separated values"
when 4..6
  puts "One of 4, 5, 6"
when 7...9
  puts "One of 7, 8, but not 9"
else
  puts "Any other thing"
end



puts"class"
obj="hello"
case obj.class
when String
  puts "it is string"
when Fixnum
  puts "it is fix number"
else
   puts "nothing"
 end
