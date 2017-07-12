
puts "1.Use of else if statement"
x=1
if x>2
puts "X value is greater than 2"
elsif x==1 and x!=0
  puts "x value is 1"
else
  puts "tha value of x is unknown "
end
puts "2.Use of unless statement"
x=1
unless x==2
  puts "(it execute when condition is false)"
  puts "the value of x is 1"
else
  puts "execute when condition is true"
  puts "the value of x is 1"
end
puts "3.Use of Modifier"
$x=true
puts"1..The value is set"if $var
puts "2..The value is set"unless $var
$x=0
puts "03..The value is set"unless $var

puts"4.Use of Case condition"
$age=5
case $age
when 0..2
  puts "baby"
when 3..6
  puts "little child"
when 7..12
  puts "child"
when 13..18
  puts "youth"
else
  puts"adult"
end
