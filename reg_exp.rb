=begin
puts "Adhar Card"
puts "enter the string"
s=gets
if(s=~/\d{4}\s\d{4}\s\d{4}/)
  puts "your string is valid"
else
  puts "your string is invalid"
end


puts "Date of birth(22/2/1997)"
puts "enter the string"
s1=gets
if(s1=~/[1-31]\/[1-12]\/\d{4}/)
  puts "your string is valid"
else
  puts "your string is invalid"
end

puts "email address(abcsa_bv.gf@gmail.com)"
puts "enter the string"
s1=gets
if(s1=~/^[a-zA-Z]+[a-zA-Z0-9|\.|\_|\-|\#]+@{1}[a-z]+\.[a-z]+$/)
  puts "your string is valid"
else
  puts "your string is invalid"
end


puts "vehicle nameplate(MH. -letter a 1234)(MH-18 ab 123)"
puts "enter the string"
s1=gets
if(s1=~/^[A-Z]{2}[\s\.\-][\d]{2}[\-\s\.]([a-z]{1,2}[\s][0-9]{4})$/)
  puts "your string is valid"
else
  puts "your string is invalid"
end


puts "IP Number(172.018.001.001Range 0 to 255)"
puts "enter the string"
s1=gets
if(s1=~/^(([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.){3}([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])$/)
  puts "your string is valid"
else
  puts "your string is invalid"
end

puts "Hsc seat number(S023269)"
puts "enter the string"
s1=gets
if(s1=~/^s\d{6}$/)
  puts "your string is valid"
else
  puts "your string is invalid"
end


puts "Ssc seat number(D103157)"
puts "enter the string"
s1=gets
if(s1=~/^D\d{6}$/)
  puts "your string is valid"
else
  puts "your string is invalid"
end
=end
puts"URL Matching (http://www.google.com)"
puts "enter the string"
s1=gets
if(s1=~/[http|ftp]\:\/\/[A-Za-z0-9]+(\.[a-zA-Z]+)$/)
  puts "your string is valid"
else
  puts "your string is invalid"
end
