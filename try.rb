puts"abc"[/a/]
puts "James"[/a/]
puts "def"[/a/]
puts "ABC"[/a/i]
puts "Jemes"[/[aeiou]/]
puts "abcdef"[/[aeiou]/]
puts "cat" [/[aeiou]/]
puts "acc"[/[^aeiou]/]
puts "dog"[/[^aeiou]/]
puts "UPP"[/[^A-Z]/]
puts "lower"[/[a-z]/]
puts "no is 42"[/[0-9]/]
puts "3 blind mice"[/[A-Za-z0-9]/]
puts "42"[/\d/]
puts "abc"[/\D/]
puts "space: "[/\s/]
puts "tab:\t"[/\s/]
puts " \t\n word"[/\S/]
puts "\tword"[/\w/]
puts "! @ - # % ^ & * ( ) - + ="[/\W/]
puts "\tword"[/\W/]
puts "abc"[/a.*/]
puts "aa"[/a./]
puts "a(1)"[/a./]
puts "a\nb"[/a./]
puts "a\tb"[/a./]
puts "a b"[/a./]
puts "james@graysoftinc.com"[/inc\.com/]
puts"the number is 42"[/\d/]

puts"the number is 42"[/\d+/]

puts"the number is 420"[/\d+/]

puts"the number is 420000"[/\d+/]

puts"the number is 420000.00"[/\d+/]

puts"the number"[/\d+/]
puts"a"[/a*/]

puts"aaa"[/a*/]

puts"aaa "[/a*/]

puts"aaa aa"[/a*/]

puts"b"[/a*/]

puts""[/a*/]
puts "james@graysoftinc.com".scan(/[aeiou]/)
puts "James Edward Gray II".sub(/[aeiou]/i, "X")

puts"James Edward Gray II".gsub(/[aeiou]/i, "X")
puts "James Edward Gray II".gsub(/[a-z]/i, "X")
