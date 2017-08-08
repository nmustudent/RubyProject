numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts "3.1",numbers[4]
numbers[4]=99
puts "3.2",numbers[4]
even=numbers.select{|n|n%2===0}
puts "3.3",even
puts "3.4",even.reverse
